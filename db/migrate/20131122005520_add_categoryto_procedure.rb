class AddCategorytoProcedure < ActiveRecord::Migration
  def change
    add_column :procedures, :category, :string, :default => "R"
  end
end
