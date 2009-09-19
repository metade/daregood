class CreatePledges < ActiveRecord::Migration
  def self.up
    create_table :pledges do |t|
      t.integer :value
      t.string :status
      t.integer :attempt_id
      t.integer :charity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pledges
  end
end
