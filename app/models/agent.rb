class Agent < ApplicationRecord
    has_many :listings, dependent: :destroy
    has_many :brokers, through: :listings
end
