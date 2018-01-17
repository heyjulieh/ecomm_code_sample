class User < ApplicationRecord
  has_many :purchases, foreign_key: :buyer_id
  has_many :items, through: :purchases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
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


  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
