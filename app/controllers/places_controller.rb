class PlacesController < ApplicationController

	def new
		@place = Place.new
	end
	
	def create
		@place = Place.create(secure_params)
		@place.image = params[:place][:image]
		@place.image.save
		@place.save
		flash[:notice] = "Dzieki za dodanie nowego miejsca w mieście #{@place.miasto}. Administrator sprawdzi czy jest dobra i doda ją na stronę, narka!"
		redirect_to root_path
	end
	
	private
	
	def secure_params
		params.require(:place).permit(:miasto, :adres, :opis)
	end

end