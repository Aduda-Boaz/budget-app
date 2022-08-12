class CategoryTransaction < ApplicationRecord
  belongs_to :category
  has_many :transaction
end
