class RemoveGameIdFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :games_id, :integer
  end
end
