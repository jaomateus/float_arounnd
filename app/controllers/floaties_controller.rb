class FloatiesController < ApplicationController
  def index
    @floaties = Floaty.all
  end

  def show
    @floaty = Floaty.find(params[:id])
  end
  
end
