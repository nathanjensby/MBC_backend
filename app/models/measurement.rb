class Measurement < ApplicationRecord

  validations :amount, presence: true

  belongs_to :recipe
  belongs_to :ingredient
end
