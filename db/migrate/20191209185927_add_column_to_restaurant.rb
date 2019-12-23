class AddColumnToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :city_id, :integer
    add_column :restaurants, :institution_id, :integer
  end
end
