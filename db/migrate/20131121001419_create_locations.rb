class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :company_id
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
    end
  end
end
