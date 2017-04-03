class ShopsController < ApplicationController
  before_action :owner_shop_by_id, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  def new
  	@shop = current_owner.shops.new
    1.times {@shop.customers.build}

    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
  	@shop = current_owner.shops.create(shop_params)

  	if @shop.save
  		redirect_to owner_shop_path(current_owner, @shop)
  	else
  		render :new
  	end
  end

  def show
    @shop = current_owner.shops.find_by(id: params[:id])

    respond_to do |format|
      format.html
      format.json
    end
  end

  def edit
  end

  def update
  	if @shop.update_attributes(shop_params)
      redirect_to owner_shop_path(current_owner, @shop)
  	else
  		render :edit
  	end
  end

  def destroy
  	@shop.destroy

  	redirect_to :root_path
  end

  private

  def owner_shop_by_id
	@shop = current_owner.shops.find(params[:id])
  end

  def shop_params
  	params.require(:shop).permit(:shop_name, :shop_address, :shop_postcode, :shop_phone, :shop_other_phone, customers_attributes: [:id, :cust_name, :cust_address, :cust_postcode, :cust_phone, :cust_other_phone, :_destroy])
  end
end
