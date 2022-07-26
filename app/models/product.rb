class Product < ApplicationRecord
  # Validates
  validates :name, :reference, :description, presence: true
end
