class CreateCustomers < ActiveRecord::Migration[6.0]
  def self.up
    create_table :customers do |t|
      t.string :fist_name
      t.string :last_name
      t.column :tenant_id, :integer

      t.timestamps
    end
  end
  def self.down
    drop_table :customers
  end
end
