<<<<<<< HEAD
class SessionsController < ApplicationController

	def new
	@user = User.new
	end
	
	def create
	user = User.where(email: secure_params[:email]).first
		if user && user.authenticate(secure_params[:password])
		session[:id] = user.id
		log_in user
		redirect_to user
	else
		flash.now[:alert] = 'Invalid email/password combination' # Not quite right!
		render 'new'
	end
	end
	
	def destroy
		log_out
		redirect_to root_path
	end

	private
	
	def secure_params
	params.require(:session).permit(:email, :password, :id)
	end
	
=======
class SessionsController < ApplicationController

	def new
	@user = User.new
	end
	
	def create
	user = User.where(email: secure_params[:email]).first
		if user && user.authenticate(secure_params[:password])
		session[:id] = user.id
		log_in user
		redirect_to user
	else
		flash.now[:alert] = 'Invalid email/password combination' # Not quite right!
		render 'new'
	end
	end
	
	def destroy
		log_out
		redirect_to root_path
	end

	private
	
	def secure_params
	params.require(:session).permit(:email, :password, :id)
	end
	
>>>>>>> a867c4911a19ab7c3ee926780a236765a42ebd6a
end