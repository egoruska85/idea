class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :link
      t.string :name_en
      t.string :name_ru

      t.timestamps
    end
  end
end
