class DesignsController < ApplicationController
  before_action :find_design, only: [:show,:edit,:destroy,:update]

  def index
  	@design = Design.all
  end

  def new
  	@design = Design.new
  end

  def create
  	@design = Design.new(design_params)
  	if @design.save
  		redirect_to @design, notice: "Successfully added new design"
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @design.update(design_params)
      redirect_to root_path,notice: "Successfully updated design!"
    else
      render 'show',notice: "Error in updating!"
    end
  end

  def destroy
  end

  def show
    @particulars=@design.particulars
  end

  private

  def design_params
  	params.require(:design).permit(:customer,:pickup_date,:remarks)
  end

  def find_design
  	@design = Design.find(params[:id])
  end


end
