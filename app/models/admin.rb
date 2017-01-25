class Admin < ActiveRecord::Base
	validates :login, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
end
