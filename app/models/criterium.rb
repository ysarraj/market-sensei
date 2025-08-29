class Criterium < ApplicationRecord
  belongs_to :indicatable, polymorphic: true
  belongs_to :alert, dependent: :destroy

  # Criterium::OPERANDS
  OPERANDS = [">", "<"]
  validates :operand, presence: :true, inclusion: { in: OPERANDS }
  validates :value, presence: :true
end
