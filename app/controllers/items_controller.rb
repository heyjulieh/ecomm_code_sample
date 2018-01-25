class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @popular = Instagram.user_recent_media
    @latest = Item.last(8).reverse
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
    @cart_action = @item.cart_action current_user.try :id
    @popular = Instagram.user_recent_media
  end

  # GET /items/new
  def new
    @item = Item.new
    @popular = Instagram.user_recent_media
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def popular
    @popular = Instagram.media_popular
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:brand, :release_year, :colorway, :description, :price, :condition, :new_or_used, {:images => []}, {:tags => []}, :size, :fit, :category, :quantity, :status)
    end
end
