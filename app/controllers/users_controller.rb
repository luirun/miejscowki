class UsersController < ApplicationController

	def new
	@user = User.new
	end
	
	def create
	@user = User.new(secure_params)
	if @user.valid?
		flash[:notice] = "Sczesliwa rejestracja!"
		@user.save
		redirect_to root_path
	else
		flash[:alert] = "Problem z hasłem!"
		render "new"
	end
	end
	
	def show
		@user = User.find(params[:id])
	end
	
	private
	
	def secure_params
	params.require(:user).permit(:id, :imie, :nazwisko, :miasto, :dataur, :password, :password_confirmation, :email, :login, :password_digest)
	end
	
end