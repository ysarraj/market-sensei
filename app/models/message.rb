class Message < ApplicationRecord
  belongs_to :chat

  validates :role, presence: true
end
