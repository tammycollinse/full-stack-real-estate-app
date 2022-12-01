class Listing < ApplicationRecord
  belongs_to :broker
  belongs_to :agent
end
