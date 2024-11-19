class Art < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :users, through: :bookings
  belongs_to :artist

  has_one_attached :photo

  CATEGORY = ["painting", "photography", "ceramic", "statue", "tapestry"]

  validates :name, presence: true, length: { in: 2..30 }
  validates :description, presence: true, length: { in: 10..1000 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :artist, presence: true
end
