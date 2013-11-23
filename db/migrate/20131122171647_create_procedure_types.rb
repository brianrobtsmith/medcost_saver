class CreateProcedureTypes < ActiveRecord::Migration
  def change
    create_table :procedure_types do |t|
      t.string :Category

      t.timestamps
    end
  end
end
