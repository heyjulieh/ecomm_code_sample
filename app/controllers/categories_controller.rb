class CategoriesController < ApplicationController
  def show
    category = params[:category]
    # find all items for that category
    @items = Item.where(category: category)
    @popular = Instagram.user_recent_media
    @newsletter = Newsletter.new
  end
end
