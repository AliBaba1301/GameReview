class RemoveCompanyIdFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :company_id, :integer
  end
end
