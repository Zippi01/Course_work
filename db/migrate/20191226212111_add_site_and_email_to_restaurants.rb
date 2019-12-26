class AddSiteAndEmailToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :site, :string
    add_column :restaurants, :email, :string
  end
end
