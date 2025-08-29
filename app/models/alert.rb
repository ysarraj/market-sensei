class Alert < ApplicationRecord
  belongs_to :user
  has_many :criteria

  validates :user_id, presence: :true
  validates :name, presence: true, uniqueness: true
end
