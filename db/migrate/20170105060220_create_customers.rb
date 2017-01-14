class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :pickup_date
      t.string :remarks
      t.string :status
      
      t.timestamps null: false
    end
  end
end
