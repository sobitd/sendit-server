class AddTotalCostToParcels < ActiveRecord::Migration[7.0]
  def change
    add_column :parcels, :totalcost, :integer
  end
end
