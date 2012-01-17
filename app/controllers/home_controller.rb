class HomeController < ApplicationController
  def index
  end

  def doThingWithGeoLocationVisitor
   @lon = params[:lon]
   @lat = params[:lat]

   @info= Geokit::Geocoders::GoogleGeocoder.reverse_geocode @lat+','+@lon

   @message= @info.full_address

   respond_to do |format|
      format.js
   end
  end

end
