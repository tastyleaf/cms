class AddTabsNameTo < ActiveRecord::Migration[5.1]
  def change
    add_column :spreadsheets, :tabs_name, :string
    rename_column :spreadsheets, :name, :spreadsheet_name
  end
end
