class AddNotesTakenToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :notes_taken, :text
  end
end
