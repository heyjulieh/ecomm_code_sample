class CartsController < ApplicationController
  # before_action :authenticate_user!

  def show
    cart_ids = $redis.smembers current_user_cart
    guest_cart_ids = $redis.smembers guest_user_cart
    @cart_items = Item.find(cart_ids)
    @guest_cart_items = Item.find(guest_cart_ids)
    @sample = (Item.all).sample(6)
    @newsletter = Newsletter.new
  end

  def add
    item = Item.find params[:item_id]
    if current_user && item.quantity > 0
      p 'Current User added item to cart.'
      $redis.sadd current_user_cart, params[:item_id]
      render json: current_user.cart_count, status: 200
      item.update_columns(quantity: item.quantity - 1)
      item.update_columns(status: item.status = "Selling in Progress")
      item.update_columns(countdown: item.countdown = 600)
      current_user.countdown(600)
    elsif guest_user && item.quantity > 0
      p 'Guest User added item to cart.'
      $redis.sadd guest_user_cart, params[:item_id]
      render json: guest_user.cart_count, status: 200
      item.update_columns(quantity: item.quantity - 1)
      item.update_columns(status: item.status = "Selling in Progress")
      item.update_columns(countdown: item.countdown = 600)
      guest_user.countdown(600)
    end
  end

  def remove
    item = Item.find params[:item_id]
    if current_user && item.quantity = 0
      p 'Current User deleted item from cart.'
      $redis.srem current_user_cart, params[:item_id]
      current_user.countdown(0)
      item.update_columns(quantity: item.quantity + 1)
      render json: current_user.cart_count, status: 200
      item.update_columns(status: item.status = "Available")
    elsif guest_user && item.quantity = 0
      p 'Guest User deleted item from cart.'
      $redis.srem guest_user_cart, params[:item_id]
      guest_user.countdown(0)
      item.update_columns(quantity: item.quantity + 1)
      render json: guest_user.cart_count, status: 200
      item.update_columns(status: item.status = "Available")
    end
  end


  private

  def current_user_cart
    "cart#{current_user.id}"
  end
  def guest_user_cart
    "cart#{guest_user.id}"
  end
end
