class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string :name
      t.string :template_file
      t.string :thumbnail
      t.string :category_id
      
      t.timestamps
    end
  end
end
