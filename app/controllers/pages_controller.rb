class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @floaties = Floaty.geocoded
    if params[:query].present?
      sql_query = "title ILIKE :query OR category ILIKE :query OR address ILIKE :query"
      @floaties = Floaty.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @floaties = Floaty.geocoded
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list', formats: :html, locals: { floaties: @floaties } }
    end
  end

  def map_all
    @floaties = Floaty.geocoded
    # The `geocoded` scope filters only flats with coordinates
    @markers = @floaties.map do |floaty|
      {
        lat: floaty.latitude,
        lng: floaty.longitude,
        info_window: render_to_string(partial: "floaties/info_window", locals: { floaty: floaty }),
        # image_url: helpers.asset_url("quaqua.png")
      }
    end
  end
end
