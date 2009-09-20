class AddStuffToAttempts < ActiveRecord::Migration
  def self.up
    add_column :attempts, :darer_id, :integer
    add_column :attempts, :daree_id, :integer
    add_column :attempts, :charity_id, :integer
    add_column :attempts, :target_value, :integer
  end

  def self.down
    remove_column :attempts, :darer_id
    remove_column :attempts, :daree_id
    remove_column :attempts, :charity_id
    remove_column :attempts, :target_value
  end
end
