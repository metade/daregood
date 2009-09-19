class CreateCharities < ActiveRecord::Migration
  def self.up
    create_table :charities do |t|
      t.string :name
      t.text :mission
      t.string :url
      t.string :logo_url
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :charities
  end
end
