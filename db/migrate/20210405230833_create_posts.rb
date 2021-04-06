class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :post_type
      t.references :user, null: false, foreign_key: true
      t.references :forum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
