class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :target_calories

      t.timestamps
    end
  end
end
