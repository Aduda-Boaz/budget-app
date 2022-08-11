class Category < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :transactions, foreign_key: :user_id
  has_one_attached :icon

  validates :name, :icon, presence: true
end
