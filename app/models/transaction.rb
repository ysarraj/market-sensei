class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :to_token, class_name: "Token"
  belongs_to :from_token, class_name: "Token"
end
