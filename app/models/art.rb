class Art < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :users, through: :bookings
end
