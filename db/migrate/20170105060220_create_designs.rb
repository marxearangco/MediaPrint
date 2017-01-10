class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :customer
      t.date :pickup_date
      t.time :pickup_time
      t.string :remarks
      t.string :status
      
      t.timestamps null: false
    end
  end
end
