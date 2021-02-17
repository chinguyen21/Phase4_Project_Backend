class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.integer :calories
      t.string :category

      t.timestamps
    end
  end
end
