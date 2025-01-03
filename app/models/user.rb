class User < ApplicationRecord
  has_many :bookings
  has_many :arts, through: :bookings, foreign_key: :owner_id

  has_one_attached :photo

  validates :name, presence: true, length: { in: 2..30 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
