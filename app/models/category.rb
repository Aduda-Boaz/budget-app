class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :category_transactions
  has_many :transactions, through: :category_transactions
  has_one_attached :icon

  validates :name, presence: true
end
