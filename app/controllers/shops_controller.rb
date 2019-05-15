class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = Shops.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to @shop
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if shop.update(shop_params)
      redirect_to @shop
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path
  end

  private
  def shop_params
    params.require(:shop).permit(:name)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

end
