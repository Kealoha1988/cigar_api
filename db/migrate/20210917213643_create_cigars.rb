class CreateCigars < ActiveRecord::Migration[6.1]
  def change
    create_table :cigars do |t|
      t.string :brand
      t.string :line
      t.string :country
      t.string :size
      t.text :about

      t.timestamps
    end
  end
end
