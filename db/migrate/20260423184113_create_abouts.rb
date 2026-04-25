class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :telegram
      t.string :whatsup
      t.string :max
      t.text :about

      t.timestamps
    end
  end
end
