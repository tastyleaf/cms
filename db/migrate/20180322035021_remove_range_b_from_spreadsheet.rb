class RemoveRangeBFromSpreadsheet < ActiveRecord::Migration[5.1]
  def change
    remove_column :spreadsheets, :range_b
    rename_column :spreadsheets, :range_a, :range_name
  end
end
