class Recipe < ApplicationRecord
  validations :name, presence: true
  validations :description, presence: true
end
