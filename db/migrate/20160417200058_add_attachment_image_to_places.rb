class AddForeignKey < ActiveRecord::Migration
  def self.up
		add_foreign_key :books, :authors, column:  :aid, primary_key: :author_id
    end
  end

end
