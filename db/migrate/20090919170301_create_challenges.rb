class CreateChallenges < ActiveRecord::Migration
  def self.up
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :challenges
  end
end
