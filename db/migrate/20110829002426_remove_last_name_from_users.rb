class RemoveLastNameFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :last_name
  end

  def self.down
    add_column :users, :last_name, :string
  end
end
