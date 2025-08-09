class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.date :date
      t.string :opponent
      t.string :place
      t.string :start_time
      t.string :score
      t.text :note

      t.timestamps
    end
  end
end
