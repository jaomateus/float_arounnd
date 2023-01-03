class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
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
