class Addcategoryidtoprocedure < ActiveRecord::Migration
  def change
    add_column :procedures, :category_id, :string, :default => ""
  end
end
