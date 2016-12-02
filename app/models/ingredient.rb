class Ingredient < ApplicationRecord
  validations :name, presence: true
  has_many :recipes, through: :measurements
end
