class School < ApplicationRecord
  has_many :users
  has_many :tournaments

  validates :name, presence: true
  validates :name, uniqueness: true
end
