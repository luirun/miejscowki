class AddAttachmentZdjecieToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :zdjecie
    end
  end

  def self.down
    remove_attachment :places, :zdjecie
  end
end
