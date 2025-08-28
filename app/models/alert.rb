class Alert < ApplicationRecord
  belongs_to :user
  has_many :criteria_alerts
  has_many :criteria, through: :criteria_alerts

  validates :user_id, presence: :true
  validates :name, presence: true, uniqueness: true
end
