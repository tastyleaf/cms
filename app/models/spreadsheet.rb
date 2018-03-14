class Spreadsheet < ApplicationRecord
  belongs_to :page, dependent: :restrict_with_error
end
