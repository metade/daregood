class CreateAttempts < ActiveRecord::Migration
  def self.up
    create_table :attempts do |t|
      t.integer :challenge_id
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :attempts
  end
end
