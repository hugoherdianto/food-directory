class AddForeignKeyToRestaurantReview < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurant_reviews, :user_id, :integer
    add_column :restaurant_reviews, :restaurant_id, :integer
  end
end
