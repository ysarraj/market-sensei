class Token < ApplicationRecord
  validates :token_contract, presence: :true, uniqueness: :true
  validates :name, presence: true, uniqueness: true
end

