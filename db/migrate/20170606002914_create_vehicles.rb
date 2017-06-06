class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :manufacture

      t.timestamps
    end
  end
end
