class HomeController < ApplicationController

  def index
  end

  def doThingWithGeoLocationVisitor
   @message = params[:msg]
   respond_to do |format|
      format.js
   end
  end

end
