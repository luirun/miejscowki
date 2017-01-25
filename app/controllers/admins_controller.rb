class AdminsController < ApplicationController

	def show
		@userpanel = User.select(:login, :id, :email, :dataur)
		@placepanel = Place.select(:id, :adres, :miasto, :user_id, :approved, :opis)
		@unapproved= Place.where(:approved => "n").select(:id, :adres, :miasto, :user_id, :approved, :opis)
	end
	
	def panel
		@userpanel = User.find(params[:user][:id])
	end
	
	def update
		@userpanel = User.find(params[:user][:id])
			if @userpanel.update(user_params)
			flash[:notice] = "Profile updated"
			redirect_to edit_path
			else
			flash[:notice] = "We have a problem"
			render "panel"
			end
	end
	
	def placepanel
		@placepanel = Place.find(params[:place][:id])
	end
	
	def placeupdate
		@placepanel = Place.find(params[:place][:id])
			if @placepanel.update(place_params)
			flash[:notice] = "Miejsce zaaktualizowane!"
			redirect_to edit_path
		else
			flash[:notice] = "We have a problem"
			redirect_to edit_path
		end
	end
	
	def userplaces
		@userplace = Place.where(user_id: params[:id])
		@userplace = Place.where(user_id: params[:id])
	end
	
	private
	
	def user_params
<<<<<<< HEAD
		params.require(:user).permit(:id, :imie, :nazwisko, :miasto, :dataur, :email, :login, :is_admin)
=======
		params.require(:user).permit(:id, :imie, :nazwisko, :miasto, :dataur, :email, :login)
>>>>>>> a867c4911a19ab7c3ee926780a236765a42ebd6a
	end
	
	def place_params
		params.require(:place).permit(:id, :adres, :miasto, :user_id, :opis, :approved)
	end
	
end