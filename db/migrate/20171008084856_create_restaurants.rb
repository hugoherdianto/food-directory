# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.time :start_hour
      t.time :end_hour

      t.timestamps
    end
  end
end
