class CreateParticulars < ActiveRecord::Migration
  def change
    create_table :particulars do |t|
      t.string :media_type
      t.integer :qty
      t.boolean :w_design
      t.string :description
      t.attachment :image
      t.double :amount
      
      t.timestamps null: false
    end
  end
end
