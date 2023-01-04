class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.bigint :external_restaurant_code
      t.timestamps
    end
  end
end
