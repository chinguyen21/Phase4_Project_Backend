class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :user_foods, :date, :string
  end
end
