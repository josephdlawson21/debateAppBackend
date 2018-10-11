class Tournament < ApplicationRecord
  belongs_to :school

  has_many :tournament_rounds
  has_many :rounds, through: :tournament_rounds

  validates :name, presence: true
end
