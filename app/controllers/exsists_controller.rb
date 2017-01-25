class ExsistsController < ApplicationController

	def new
		@miejscowki = Place.where(:approved => "y").select(:miasto).uniq
		@miasto = Place.new(params[:miasto])
	end
	
	def create
		@test = Place.where('places'=>params[:id], :approved => "y")
		@nowa = Place.where(params[:user_id]).first
		@user = User.find(@nowa)
		@miasto = Place.new(params[:miasto])
	end
	
	def destroy
		@place = Place.find(params[:id])
		@place.destroy
	    respond_to do |format|
	      format.html { redirect_to places_path, notice: 'Miejsce skasowane pomyslnie!' }
	      format.json { head :no_content }
	    end
  	end
end