class CreateApikeys < ActiveRecord::Migration
  def self.up
    create_table :apikeys do |t|
      t.string :key
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :apikeys
  end
end
