class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :category, foreign_key: :category_id

  validates :name, presence: true
  validates :amount, presence: true,
                     numericality: { greater_than: 0, must_not_be_zero: 'The Expense must be greater than $0.00' }
end
