class AddDesignsToParticulars < ActiveRecord::Migration
  def change
    add_reference :particulars, :design, index: true, foreign_key: true
  end
end
