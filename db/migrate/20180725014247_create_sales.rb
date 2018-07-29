class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string :payment_type

      t.timestamps
    end
  end
end
