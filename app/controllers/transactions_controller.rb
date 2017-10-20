class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_cart!

  def new
    gon.client_token = generate_client_token
    cart_ids = $redis.smembers current_user_cart
    @cart_items = Item.find(cart_ids)
  end

  def create
    unless current_user.has_payment_info?
      @result = Braintree::Transaction.sale(
                  amount: current_user.cart_total_price,
                  payment_method_nonce: params[:payment_method_nonce],
                  customer: {
                    first_name: current_user.first_name,
                    last_name: current_user.last_name,
                    street_address: current_user.street_address,
                    city_address: current_user.city_address,
                    state: current_user.state,
                    country: current_user.country,
                    zip_code: current_user.zip_code,
                    email: current_user.email,
                    phone: current_user.phone
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
      current_user.purchase_cart_items!
      redirect_to root_url, notice: "Your transaction was successful."
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
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

  def check_cart!
   if current_user.get_cart_items.blank?
     redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
   end
  end

  def current_user_cart
    "cart#{current_user.id}"
  end


end
