class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :name
      t.string :groom
      t.string :bride
     


      t.timestamps
    end
  end
end
