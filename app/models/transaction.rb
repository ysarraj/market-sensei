class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :to_token, class_name: "Token"
  belongs_to :from_token, class_name: "Token"

  validates :from_token_price, presence: :true
  validates :to_token_price, presence: :true
  validates :tx_hash, presence: :true, uniqueness: :true, length: { is: 66 }
  
  validates :to_token_unit, presence: :true
  validates :from_token_unit, presence: :true
end
