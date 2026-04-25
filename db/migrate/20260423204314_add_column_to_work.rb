class AddColumnToWork < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :title, :string
    add_column :works, :body, :text
    add_reference :works, :service, null: false, foreign_key: true
  end
end
