class Place < ActiveRecord::Base
has_attached_file :image,
       :url  => "/assets/users/:id/:style/:basename.:extension",
       :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension",
	   :styles => { :thumb => ["210x210#!", :medium => "1280x800>" ] }
validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
validates_presence_of :miasto, :adres, :opis, :image => :create


end