class CriteriaAlert < ApplicationRecord
  belongs_to :alert
  belongs_to :criterium
end
