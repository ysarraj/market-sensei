class RelativeStrengthIndex < ApplicationRecord
  has_many :poly_criteriumn, as: :indicatable

  validates :interval, presence: :true
  validates :time_period, presence: :true

  def label
    "Interval: #{interval} / Time Period: #{time_period}"
  end
end
