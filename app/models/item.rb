class Item < ApplicationRecord
  has_many :purchases
  has_many :buyers, through: :purchases
  validates :brand, presence: true
  validates :colorway, presence: true
  validates :description, presence: true
  validates :product_name, presence: true
  validates :price, presence: true

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end

  serialize :tags, Array
  serialize :images, Array

end
