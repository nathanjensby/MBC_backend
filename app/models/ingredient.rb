class Ingredient < ApplicationRecord
  validations :name, presence: true
end
