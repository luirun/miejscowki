class ExsistsController < ApplicationController

	def new
		@miejscowki = Place.select(:miasto).uniq
		@miasto = Place.new(params[:miasto])
	end
	
	def create

		@test = Place.where(params[:miasto])
		@nowa = Place.where(params[:user_id]).first
		@user = User.find(@nowa)
		@miasto = Place.new(params[:miasto])
	end
	
end