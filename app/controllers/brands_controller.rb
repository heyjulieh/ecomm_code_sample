class BrandsController < ApplicationController
  def show
    brand = params[:brand]
    # find all items for that brand
    @items = Item.where(brand: brand)
    @popular = Instagram.user_recent_media
  end
end
