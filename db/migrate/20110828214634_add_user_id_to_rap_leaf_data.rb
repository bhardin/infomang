class AddUserIdToRapLeafData < ActiveRecord::Migration
  def self.up
    add_column :rapleafdata, :user_id, :integer
  end

  def self.down
    remove_column :rapleafdata, :user_id
  end
end
