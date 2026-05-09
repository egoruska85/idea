class AddColumnToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :email, :string
  end
end
