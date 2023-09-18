class AddTechnologyColumnToRepository < ActiveRecord::Migration[7.0]
  def change
    add_column :repositories, :technology, :string
  end
end
