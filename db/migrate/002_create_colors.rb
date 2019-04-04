class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :complementary_color
      t.string :analogous_colors
      t.string :triadic_colors

      t.timestamps
    end
  end
end
