class CategoriesController < ApplicationController
  def show
    category = params[:category]
    # find all items for that category
    @items = Item.where(category: category)
  end
end
