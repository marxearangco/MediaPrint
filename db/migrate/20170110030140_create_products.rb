class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :media
      t.boolean :w_size
      t.string :description
      t.double :price
      #t.timestamps null: false
    end
  end
end
