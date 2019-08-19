class User < ApplicationRecord
    has_many :players, through: :teams
    has_many :teams
end
