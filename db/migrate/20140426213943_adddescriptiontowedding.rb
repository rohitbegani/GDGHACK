class Adddescriptiontowedding < ActiveRecord::Migration
  def change
    add_column :weddings, :description, :text
  end
end
