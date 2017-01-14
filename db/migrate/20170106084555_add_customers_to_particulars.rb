class AddCustomersToParticulars < ActiveRecord::Migration
  def change
    add_reference :particulars, :customer, index: true
  end
end
