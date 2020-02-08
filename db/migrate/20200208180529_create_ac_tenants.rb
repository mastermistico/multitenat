class CreateAcTenants < ActiveRecord::Migration[6.0]
  def self.up
    create_table :ac_tenants do |t|
      t.string :name

      t.timestamps
    end
  end
  def self.down
    drop_table :customers
  end
end
