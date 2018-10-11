class CreateTournamentRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :tournament_rounds do |t|
      t.integer :round_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
