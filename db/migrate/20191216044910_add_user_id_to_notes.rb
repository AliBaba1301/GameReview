class AddUserIdToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :user_id, :text
  end
end
