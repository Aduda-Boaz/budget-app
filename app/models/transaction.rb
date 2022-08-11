class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories, foreign_key: :user_id
end
