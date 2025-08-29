class Criterium < ApplicationRecord
  belongs_to :indicatable, polymorphic: true
  belongs_to :alert

  # Criterium::OPERANDS
  OPERANDS = [">", "<"]
  validates :operand, presence: :true, inclusion: { in: OPERANDS }
  validates :value, presence: :true
end
