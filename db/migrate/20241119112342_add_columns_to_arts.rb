class AddColumnsToArts < ActiveRecord::Migration[7.1]
  def change
    add_column :arts, :year, :integer
    add_column :arts, :category, :string
    add_reference :arts, :artist, foreign_key: true
  end
end
