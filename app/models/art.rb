class Art < ApplicationRecord
  belongs_to :user, as: :owner
  has_many :users, through: :bookings
end
