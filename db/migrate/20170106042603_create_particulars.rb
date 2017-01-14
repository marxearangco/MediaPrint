class CreateParticulars < ActiveRecord::Migration
  def change
    create_table :particulars do |t|
      t.string :media
      t.integer :qty
      t.boolean :w_design
      t.string :description
      t.float :amount
      
      t.timestamps null: false
    end
  end
end
