class TournamentRound < ApplicationRecord
  belongs_to :tournament
  belongs_to :round
end
