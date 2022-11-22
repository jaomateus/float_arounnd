class FloatiesController < ApplicationController
  def index
    @floaties = Floaty.all
  end

  def show
    @floaty = Floaty.find(params[:id])
  end

  def new
    @floaty = Floaty.new
  end

  def create
    @floaty = Floaty.new(floaty_params)
    if @floaty.save
      redirect_to floaty_path(@floaty.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def floaty_params
    params.require(:floaty).permit(:title, :category, :details, :price, :city, :address)
  end
end
