class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.integer :procedure_id
      t.integer :company_id
      t.float :exam_price
      t.float :test_price
      t.float :total_price
    end
  end
end
