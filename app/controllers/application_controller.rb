class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @popular = Instagram.user_recent_media
  end

  def current_user
    super || guest_user
  end

  def current_or_guest_user
    if current_user
      if session[:guest_user_id]
        transfer_guest_user_records_to_logged_in_user
        guest_user.destroy
        session[:guest_user_id] = nil
      end
      current_user
    else
      guest_user
    end
  end

  private

  def guest_user
    @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)
  rescue ActiveRecord::RecordNotFound # if session[:guest_user_id] invalid
     session[:guest_user_id] = nil
     guest_user
  end


  def transfer_guest_user_records_to_logged_in_user
    guest_user.get_cart_items = current_user.get_cart_items
    guest_user_cart = current_user_cart
    guest_user.cart_count = current_user.cart_count
    guest_user.cart_total_price = current_user.cart_total_price
    @guest_cart_items.each do |item|
      item = Item.find params[:item_id]
      $redis.sadd current_user_cart, params[:item_id]
      render json: current_user.cart_count, status: 200
    end
  end

  def create_guest_user
    u = User.create(:first_name => "guest", :email => "guest_#{Time.now.to_i}#{rand(99)}@example.com")
    u.skip_confirmation!
    u.save!(:validate => false)
    session[:guest_user_id] = u.id
    u
  end

end
