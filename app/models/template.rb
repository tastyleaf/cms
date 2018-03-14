class Template < ApplicationRecord
  validates_presence_of :name, :category_id, :template_file, :thumbnail
  belongs_to :category
  belongs_to :page, dependent: :restrict_with_error
end
