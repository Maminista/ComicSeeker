class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :image_id

      t.timestamps
    end
  end
end
