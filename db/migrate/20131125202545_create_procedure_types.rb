class CreateProcedureTypes < ActiveRecord::Migration
  def change
    drop_table :procedure_types
  end
end
