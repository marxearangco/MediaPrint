class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :image
      t.integer :particular_id, index: true
      t.timestamps null: false

    end
  end
end
