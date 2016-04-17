class ExsistsController < ApplicationController
	def show
		@place = Place.first      
	end
	
	def create
		render :new
	end
end