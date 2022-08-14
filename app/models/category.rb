class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :transactions
  has_one_attached :icon

  validates :name, presence: true
  validates :icon, presence: true

  def sum_total
    total = 0
    Transaction.where(category_id: id).each do |transaction|
      total += transaction.amount
    end
    total
  end
end
