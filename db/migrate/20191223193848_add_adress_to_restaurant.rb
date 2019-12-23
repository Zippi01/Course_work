class AddAdressToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :adress, :string
  end
end
