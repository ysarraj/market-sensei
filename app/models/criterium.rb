class Criterium < ApplicationRecord
  belongs_to :indicatable, polymorphic: true

  # Criterium::OPERANDS
  OPERANDS = [">", "<"]
  validates :operand, presence: :true, inclusion: { in: OPERANDS }
  validates :value, presence: :true
end
