class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.float :initial_price
      t.string :rating
      t.integer :company_id
      t.string :company
      t.string :farnchise

      t.timestamps
    end
  end
end
