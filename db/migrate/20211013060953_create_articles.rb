class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title_en
      t.string :title_ru
      t.text :body
      t.boolean :verify

      t.timestamps
    end
  end
end
