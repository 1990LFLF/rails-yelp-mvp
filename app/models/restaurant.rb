class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # deleta
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }
end
