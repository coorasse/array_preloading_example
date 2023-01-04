class CreateWrappedRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :wrapped_restaurants do |t|
      t.string :code
      t.timestamps
    end
  end
end
