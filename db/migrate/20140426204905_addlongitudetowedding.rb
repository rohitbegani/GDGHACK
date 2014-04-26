class Addlongitudetowedding < ActiveRecord::Migration
  def change
    add_column :weddings, :longitude, :float
  end
end
