class RemoveAdsressColumnRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :adsress
  end
end
