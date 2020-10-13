class ItemsController < ApplicationController
  #before_action :authenticate_user!, only: :new
  before_action :set_item, only: [:edit, :show]
  
  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path(@item)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def item_params
    params.require(:item).permit(:name, :text, :category_id, :quality_id, :postage_id, :shipping_id, :day_id, :price, :image ).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
