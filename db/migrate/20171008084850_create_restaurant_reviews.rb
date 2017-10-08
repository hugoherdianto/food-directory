class CreateRestaurantReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_reviews do |t|
      t.integer :rating
      t.string :review

      t.timestamps
    end
  end
end
