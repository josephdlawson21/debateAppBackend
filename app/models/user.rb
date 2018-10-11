class User < ApplicationRecord
  belongs_to :school

  has_many :round_users
  has_many :rounds, through: :round_users

  validates :name, presence: true
end
