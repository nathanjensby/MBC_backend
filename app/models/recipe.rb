class Recipe < ApplicationRecord
  validations :name, presence: true
  validations :description, presence: true
  has_many :ingredients, through: :measurements
end
