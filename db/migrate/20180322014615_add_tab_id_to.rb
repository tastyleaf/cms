class AddTabIdTo < ActiveRecord::Migration[5.1]
  def change
    add_column :spreadsheets, :tab_id, :string
    rename_column :spreadsheets, :tabs_name, :tab_name
  end
end
