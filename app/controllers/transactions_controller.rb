class TransactionsController < ApplicationController
  before_action :check_cart

  def new
    gon.client_token = generate_client_token
    cart_ids = $redis.smembers current_user_cart
    @cart_items = Item.find(cart_ids)
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new
    unless current_user.has_payment_info?
      @result = Braintree::Transaction.sale(
                  amount: current_user.cart_total_price,
                  payment_method_nonce: params[:payment_method_nonce],
                  customer: {
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    # street_address: params[:street_address],
                    # extended_address: params[:extended_address],
                    # locality: params[:locality],
                    # region: params[:region],
                    # country_code_alpha2: params[:country_code_alpha2],
                    # postal_code: params[:postal_code],
                    email: current_user.email,
                    phone: params[:phone]
                  },
                  options: {
                    store_in_vault: true
                  })
    else
      @result = Braintree::Transaction.sale(
                  amount: current_user.cart_total_price,
                  payment_method_nonce: params[:payment_method_nonce])
    end

    if @result.success?
      current_user.update(braintree_customer_id: @result.transaction.customer_details.id) unless current_user.has_payment_info?
      current_user.get_cart_items.each { |item| item.update_columns(quantity: item.quantity = 0) }
      current_user.get_cart_items.each { |item| item.update_columns(status: item.status = "SOLD") }
      current_user.purchase_cart_items!
      redirect_to summary_path, notice: "Your order ID: #{@result.transaction.id}. You paid: $#{@result.transaction.amount}."

    else
      redirect_to root_path, notice: "Something messed up while processing your order. Please try again."
      gon.client_token = generate_client_token
    end
  end

private
  def generate_client_token
    if current_user.has_payment_info?
      Braintree::ClientToken.generate(customer_id: current_user.braintree_customer_id)
    else
      Braintree::ClientToken.generate
    end
  end

  def check_cart
   if current_user.get_cart_items.blank?
   end
  end

  def current_user_cart
    "cart#{current_user.id}"
  end
end
