class CreateRapleafdata < ActiveRecord::Migration
  def self.up
    create_table :rapleafdata do |t|
      t.string :age
      t.string :gender
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :rapleafdata
  end
end
