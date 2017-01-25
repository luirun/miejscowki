class PlacesController < ApplicationController

	def new
		@place = Place.new
	end
	
	def create
		@place = Place.create(secure_params)
		@place.approved = "n"
		@place.image = params[:place][:image]
		@place.image.save
		@place.user_id = user_id = current_user.id
		@place.save
		flash[:notice] = "Dziekujemy za dodanie nowego miejsca w mieście #{@place.miasto}. Miejsce oczekuje na zaakceptowanie!"
		redirect_to root_path
	end
	
	private
	
	def secure_params
		params.require(:place).permit(:miasto, :adres, :opis, :user_id)
	end

end