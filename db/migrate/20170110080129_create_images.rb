class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :particular_id
      t.attachment :image

      t.timestamps null: false
    end
    add_index :images, :particular_id
  end
end
