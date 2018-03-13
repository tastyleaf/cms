class CreateSpreadsheets < ActiveRecord::Migration[5.1]
  def change
    create_table :spreadsheets do |t|
      t.string :name
      t.string :range_name
      
      t.timestamps
    end
  end
end
