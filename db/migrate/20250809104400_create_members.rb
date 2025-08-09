class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :number
      t.string :position
      t.string :throws_bats
      t.text :bio
      t.string :avatar

      t.timestamps
    end
  end
end
