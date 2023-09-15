class AddTechnologyColumnsToRepository < ActiveRecord::Migration[7.0]
  def change
    add_column :repositories, :technology, :string
    add_column :repositories, :technology_image_pattern, :string
  end
end
