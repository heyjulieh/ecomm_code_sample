class User < ApplicationRecord
  has_many :purchases, foreign_key: :buyer_id
  has_many :items, through: :purchases

  def move_to(user)
    get_cart_items.each { |item| add(item) }
    cart_ids = $redis.smembers "cart#{id}"
    Item.find(cart_ids).update_all(user_id: user.id)
  end

  def add
    item = Item.find params[:item_id]
    if item.quantity > 0
      $redis.sadd current_user_cart, params[:item_id]
      render json: current_user.cart_count, status: 200
      item.update_columns(quantity: item.quantity - 1)
      item.update_columns(status: item.status = "Selling in Progress")
      item.update_columns(countdown: item.countdown = 600)
      current_user.countdown(600)
    end
  end

  def cart_count
    $redis.scard "cart#{id}"
  end

  def cart_total_price
    total_price = 0
    get_cart_items.each { |item| total_price+= item.price }
    total_price
  end

  def get_cart_items
    cart_ids = $redis.smembers "cart#{id}"
    Item.find(cart_ids)
  end

  def has_payment_info?
    braintree_customer_id
  end

  def purchase_cart_items!
    get_cart_items.each { |item| purchase(item) }
    $redis.del "cart#{id}"
  end

  def delete_cart!
    $redis.del "cart#{id}"
  end

  def purchase(item)
    items << item unless purchase?(item)
  end

  def purchase?(item)
    items.include?(item)
  end

  def countdown(seconds)
    limit = Time.now + seconds
    while Time.now < limit
      t = Time.at(limit.to_i - Time.now.to_i)
      puts t.strftime('%M:%S')
      sleep 1
    end
    get_cart_items.each { |item| item.update_columns(countdown: item.countdown = 0) }
    get_cart_items.each { |item| item.update_columns(quantity: item.quantity = 1 ) }
    get_cart_items.each { |item| item.update_columns(status: item.status = "Available" ) }
    $redis.del "cart#{id}"
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
