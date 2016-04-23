class ExsistsController < ApplicationController

	def new
		@miejscowki = Place.select(:miasto).uniq
		zmienna = 'Warszawa'
		@miasto = Place.new(params[:miasto])
	end
	
	def create
		@kielbasa = params[:id]
		@test = Place.where('places'=>params[:id])
		
		@miasto = Place.new(params[:miasto])
		render :create
	end
	
end