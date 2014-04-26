class MapController < ApplicationController

	def index
	    @weddings = Wedding.all
		  @hash = Gmaps4rails.build_markers(@weddings) do |wedding, marker|
			  marker.lat wedding.latitude
			  marker.lng wedding.longitude
			  marker.infowindow wedding.description
		end
	end
	
end
