class Broker < ApplicationRecord

    has_many :listings , dependent: :destroy
    has_many :agents, through: :listings
end
