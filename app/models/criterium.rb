class Criterium < ApplicationRecord
  belongs_to :indicatable, polymorphic: true
end
