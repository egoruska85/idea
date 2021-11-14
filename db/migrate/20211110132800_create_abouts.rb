class CreateAbouts < ActiveRecord::Migration[6.1]
  def change
    create_table :abouts do |t|
      t.string :title_ru
      t.string :title_en
      t.text :text_ru
      t.string :text_en

      t.timestamps
    end
  end
end
