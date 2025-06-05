CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :address, presence: true
end
