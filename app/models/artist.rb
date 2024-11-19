class Artist < ApplicationRecord
  has_many :arts

  validates :name, presence: true, uniqueness: true
end
