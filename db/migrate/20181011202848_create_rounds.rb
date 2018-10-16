class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :aff_id
      t.integer :neg_id
      t.integer :winner_id
      t.integer :tournament_id
      t.string :division
      t.string :round
      t.integer :aff_speaker_points
      t.integer :neg_speaker_points
      t.string :type

      t.timestamps
    end
  end
end
