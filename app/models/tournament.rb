class Tournament < ApplicationRecord
  belongs_to :school

  has_many :rounds

  validates :name, presence: true
end
