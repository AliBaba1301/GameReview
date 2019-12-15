class AddGameIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :game_id, :integer
  end
end
