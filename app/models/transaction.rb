class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :category_transactions
  has_many :categories, through: :category_transactions
end
