class FloatiesController < ApplicationController

  def show
    @floaty = Floaty.find(params[:id])
    @review = Review.new
    @markers = [{
      lat: @floaty.latitude,
      lng: @floaty.longitude,
      info_window: render_to_string(partial: "info_window", locals: { floaty: @floaty })
      # image_url: helpers.asset_url("quaqua.png")
    }]
  end

  def new
    @floaty = Floaty.new
  end

  def create
    @floaty = Floaty.new(floaty_params)
    @floaty.user = current_user
    if @floaty.save
      redirect_to floaty_path(@floaty)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def floaty_params
    params.require(:floaty).permit(:title, :category, :details, :price, :city, :address, photos: [])
  end
end
