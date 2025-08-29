class Alert < ApplicationRecord
  belongs_to :user
  has_many :criteria, dependent: :destroy # dependent: :destroy should always be on the parent model with has_many directing to it's children model.

  validates :user_id, presence: :true
  validates :name, presence: true
end
