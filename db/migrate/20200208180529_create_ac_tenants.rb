class CreateAcTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :ac_tenants do |t|
      t.string :name

      t.timestamps
    end
  end
end
