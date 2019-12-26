class AddMenuToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :menu, :string
  end
end
