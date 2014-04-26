class Addaddresstowedding < ActiveRecord::Migration
 def change
    add_column :weddings, :address, :string
  end
end
