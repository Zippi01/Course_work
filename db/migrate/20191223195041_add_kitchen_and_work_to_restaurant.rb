class AddKitchenAndWorkToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :kitchen, :string
    add_column :restaurants, :work, :string
  end
end
