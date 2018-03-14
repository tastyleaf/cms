class Page < ApplicationRecord
  validates_presence_of :title, :content, :spreadsheet_id, :template_id
  has_many :templates 
  has_many :spreadsheet 
end
