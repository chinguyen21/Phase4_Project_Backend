class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :description
      t.string :urlToImage
      t.string :publishAt
      t.string :content

      t.timestamps
    end
  end
end