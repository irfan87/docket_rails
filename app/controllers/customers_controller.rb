class CustomersController < ApplicationController
	def index
  	@customers = current_owner.customers.all
  end

  def new
  	@customer = current_owner.customers.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @shop = current_owner.shops.find_by(params[:shop_id])
    # @customer = current_owner.customers.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
  	@customer = current_owner.customers.create(customer_params)

  	if @customer.save
  		redirect_to owner_customers_url
  	else
  		render :new
  	end
  end

  private

  def customer_params
  	params.require(:customer).permit(:cust_name, :cust_address, :cust_postcode, :cust_phone, :cust_other_phone, :owner_id)
  end
end
