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
	
end