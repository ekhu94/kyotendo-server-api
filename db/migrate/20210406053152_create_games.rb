class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :rating
      t.string :img_url
      t.string :slug
      t.date :release_date

      t.timestamps
    end
  end
end
