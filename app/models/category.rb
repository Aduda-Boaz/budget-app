class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :transactions
  has_one_attached :icon

  validates :name, presence: true
  validates :icon, presence: true

  def sum_total
    transactions.sum(:amount)
  end
end
