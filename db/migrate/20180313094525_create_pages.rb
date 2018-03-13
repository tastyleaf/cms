class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :content
      t.string :template_id
      t.string :spreadsheet_id
      
      t.timestamps
    end
  end
end
