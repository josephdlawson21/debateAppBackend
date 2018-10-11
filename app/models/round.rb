class Round < ApplicationRecord
  belongs_to :tournament

  has_many :round_users
  has_many :users, through: :round_users

end
