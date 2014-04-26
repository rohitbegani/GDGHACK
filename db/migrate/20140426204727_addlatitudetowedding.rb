class Addlatitudetowedding < ActiveRecord::Migration
  def change
    add_column :weddings, :latitude, :float
  end
end
