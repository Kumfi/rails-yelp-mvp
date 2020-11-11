class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)
  has_many :reviews

  validates :name, :address, :phone_number, presence: true
  validates_inclusion_of :category, in: CATEGORIES
end
