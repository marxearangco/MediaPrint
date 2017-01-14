class CustomersController < ApplicationController
  before_action :find_customer, only: [:show,:edit,:destroy,:update]

  def index
  	@customers = Customer.all
  end

  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(customer_params)
  	if @customer.save
  		redirect_to @customer, notice: "Successfully added new Customer"
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to root_path,notice: "Successfully updated Customer!"
    else
      render 'show',notice: "Error in updating!"
    end
  end

  def destroy
  end

  def show
    @particulars=@customer.particulars
  end

  private

  def customer_params
  	params.require(:customer).permit(:customer_name,:pickup_date,:remarks)
  end

  def find_customer
  	@customer = Customer.find(params[:id])
  end


end
