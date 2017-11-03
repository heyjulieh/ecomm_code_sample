class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @popular = Instagram.user_recent_media
    cart_ids = $redis.smembers current_user_cart
      @cart_items = Item.find(cart_ids)
      @sample = (Item.all).sample(6)
  end

  def add
    @popular = Instagram.user_recent_media
    $redis.sadd current_user_cart, params[:item_id]
    render json: current_user.cart_count, status: 200
  end

  def remove
    @popular = Instagram.user_recent_media
    $redis.srem current_user_cart, params[:item_id]
    render json: current_user.cart_count, status: 200
  end

  def popular
    @popular = Instagram.user_recent_media
  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end
end
