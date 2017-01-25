class AddForeignKey < ActiveRecord::Migration
  def self.up
		add_foreign_key :places, :users, column:  :user_id, primary_key: :id
    end
  end

end
