class User < ActiveRecord::Base
	has_secure_password
	EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
	validates :login, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
	validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
	validates :password, :presence => true, :confirmation => true, length: { :in => 6..50,
	    too_short: "The password must have at least %{count} characters.",
		too_long: "The password must have no more than %{count} characters."}
	validates :password_confirmation, presence: true
	validates_presence_of :miasto, :imie, :nazwisko, :password

end