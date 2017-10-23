# frozen_string_literal: true

class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
