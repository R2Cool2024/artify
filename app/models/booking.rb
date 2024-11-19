class Booking < ApplicationRecord
  belongs_to :art
  belongs_to :user

  STATUS = ["to be confirmed", "cancelled", "confirmed"]
  
  validates :status, presence: true, inclusion: { in: STATUS }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
