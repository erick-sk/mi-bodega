class Movement < ApplicationRecord
  # Movement Types
  MovementTypes = { add: 0, remove: 1 }

  # Associations
  belongs_to :product

  # Validates
  validates :quantity, presence: true, numericality: true

  def self.get_movement_types
    {
      'Add' => MovementTypes[:add],
      'Remove' => MovementTypes[:remove]
    }
  end

  def type_name
    return "Add" if movement_type == MovementTypes[:add]
    return "Remove" if movement_type == MovementTypes[:remove]
  end
end
