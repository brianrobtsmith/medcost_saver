class AddNotestoOffering < ActiveRecord::Migration
  def change
     add_column :offerings, :notes, :string, :default => ""
  end
end
