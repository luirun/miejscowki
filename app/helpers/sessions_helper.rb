<<<<<<< HEAD
module SessionsHelper
	# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
	def current_user
    	@current_user ||= User.find_by(id: session[:user_id])
	end
	
	def logged_in?
		!current_user.nil?
	end
	
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
=======
module SessionsHelper
	# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
	def current_user
    @current_user ||= User.find_by(id: session[:user_id])
	end
	
	def logged_in?
		!current_user.nil?
	end
	
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
>>>>>>> a867c4911a19ab7c3ee926780a236765a42ebd6a
end