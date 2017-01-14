class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :media
      t.string :unit
      t.float  :price
      t.string :description
      #t.timestamps null: false
    end
  end
end
