class RelativeStrengthIndex < ApplicationRecord
  has_many :poly_criteriumn, as: :indicatable

  validates :interval, presence: :true
  validates :time_period, presence: :true
end
