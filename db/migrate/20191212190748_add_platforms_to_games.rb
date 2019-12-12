class AddPlatformsToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :platforms, :text
  end
end
