class ParticularsController < ApplicationController
  before_action :find_params, only: [:show,:edit,:destroy,:update]
  attr_accessor :images

  def index
    @particular = Particular.find(design.id)
  end

  def new
    @particular = Particular.new
    @products = Product.all
  end

  def create
    @particular = Particular.new(params_particular)
    if @particular.save
      @i=Image.new(params_image)
      redirect_to @particular,notice: 'Successfully added items!'
    else
      render @particular
    end
  end

  def show

  end

  def update
    if @particular.update(params_particular)
      redirect_to design_path(@particular.design_id),notice: "Successfully updated items!"
    else
      render @particular,notice: "Error in updating!"
    end
  end

  def destroy
  end

  def edit
  end

  private

  def params_particular
    params.require(:particular).permit(:media_type,:qty,:amount,:description)
    # ,:w_design,:description,:image
  end

  def params_image
    params.require(:image).permit(:image)
  end

  def find_params
    @particular = Particular.find(params[:id])
    @image = Image.find(@particular.id)
  end

  def images=(files)
    files.each do |file|
      image.create(image: file)
    end
  end
end
