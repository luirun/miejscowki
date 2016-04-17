class Place < ActiveRecord::Base
has_attached_file :image, :styles => { :small => "90x90>" },
       :url  => "/assets/users/:id/:style/:basename.:extension",
       :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"
validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
validates_presence_of :miasto, :adres, :opis, :image => :create


end