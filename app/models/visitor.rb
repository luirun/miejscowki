<<<<<<< HEAD
class Visitor < ActiveRecord::Base
	has_no_table
	attr_accessor :email, :string
	validates_presence_of :email
	validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
=======
class Visitor < ActiveRecord::Base
	has_no_table
	attr_accessor :email, :string
	validates_presence_of :email
	validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
>>>>>>> a867c4911a19ab7c3ee926780a236765a42ebd6a
end