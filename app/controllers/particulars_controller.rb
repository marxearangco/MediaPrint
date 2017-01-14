class ParticularsController < ApplicationController
  before_action :find_params, only: [:show,:edit,:destroy,:update]
  
  def new
    @products = Product.all
    @particular = Particular.new
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @particular = @customer.particulars.create(params_particular)
    if @particular.save
      redirect_to @customer,notice: 'Successfully added items!'
    else
      redirect_to @customer
    end
  end

  def show

  end

  def update
    if @particular.update(params_particular)
      redirect_to customers_path(@particular.customer_id),notice: "Successfully updated items!"
    else
      render @particular, notice: "Error in updating!"
    end
  end

  def destroy
    @particular.destroy

    redirect_to customer_path(params[:customer_id])
  end

  def edit
  end

  private

  def params_particular
    params.require(:particular).permit(:media,:qty,:amount,:w_design,:description,picture_attributes:[:image])
  end

  def find_params
    @particular = Particular.find(params[:id])

  end

end
