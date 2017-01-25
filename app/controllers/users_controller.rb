<<<<<<< HEAD
class UsersController < ApplicationController

	def new
	@user = User.new
	end
	
	def create
	@user = User.new(secure_params)
	if @user.valid?
		flash[:notice] = "Szczęśliwa rejestracja!"
		@user.save
		redirect_to root_path
	else
		flash[:alert] = "Problem z hasłem!"
		render "new"
	end
	end
	
	def update
		@user = User.new(secure_params)
		if @user.valid?
		@user.save
		flash[:notice] = "Dodano zmiany!"
		redirect_to admin_path
		else
		flash[:alert] = "Blad"
		redirect_to edit_path
		end
	end
	
	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	    respond_to do |format|
	      format.html { redirect_to users_path, notice: 'Uzytkownik skasowany pomyslnie!' }
	      format.json { head :no_content }
	    end
  	end
	
	private
	
	def secure_params
	params.require(:user).permit(:id, :imie, :nazwisko, :miasto, :dataur, :password, :password_confirmation, :email, :login, :password_digest, :is_admin)
	end
	
=======
class UsersController < ApplicationController

	def new
	@user = User.new
	end
	
	def create
	@user = User.new(secure_params)
	if @user.valid?
		flash[:notice] = "Szczęśliwa rejestracja!"
		@user.save
		redirect_to root_path
	else
		flash[:alert] = "Problem z hasłem!"
		render "new"
	end
	end
	
	def update
		@user = User.new(secure_params)
		if @user.valid?
		@user.save
		flash[:notice] = "Dodano zmiany!"
		redirect_to admin_path
		else
		flash[:alert] = "Blad"
		redirect_to edit_path
		end
	end
	
	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end
	
	private
	
	def secure_params
	params.require(:user).permit(:id, :imie, :nazwisko, :miasto, :dataur, :password, :password_confirmation, :email, :login, :password_digest)
	end
	
>>>>>>> a867c4911a19ab7c3ee926780a236765a42ebd6a
end