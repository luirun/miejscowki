class VisitorsController < ApplicationController

	def test
		flash[:notice] = "Signed up #{@visitor.email}."
	end
	
end