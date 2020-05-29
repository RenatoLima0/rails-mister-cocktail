class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  has_one_attached :photo

  validates :photo, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
end
