class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.integer :product_count
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
