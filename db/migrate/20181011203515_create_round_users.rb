class CreateRoundUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :round_users do |t|
      t.integer :round_id
      t.integer :user_id

      t.timestamps
    end
  end
end
