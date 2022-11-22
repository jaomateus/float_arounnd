class FloatiesController < ApplicationController
  def index
    @floaties = Floaty.all
  end
end
