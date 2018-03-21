class AddRangeBToSpreadsheet < ActiveRecord::Migration[5.1]
  def change
    add_column :spreadsheets, :range_b, :string
    rename_column :spreadsheets, :range_name, :range_a
  end
end
