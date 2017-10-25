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

  def purchase(item)
    items << item unless purchase?(item)
  end

  def purchase?(item)
    items.include?(item)
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
