class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :image_url
      t.integer :category_id
      t.integer :color_id

      t.timestamps
    end
  end
end
