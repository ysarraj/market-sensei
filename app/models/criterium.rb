class Criterium < ApplicationRecord
  belongs_to :indicatable, polymorphic: true

  validates :operand, presence: :true
  validates :value, presence: :true
end
