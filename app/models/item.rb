class Item < ApplicationRecord
  has_many :purchases
  has_many :buyers, through: :purchases

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end

  serialize :tags, Array
  serialize :images, Array
  mount_uploaders :images, ImagesUploader

end
