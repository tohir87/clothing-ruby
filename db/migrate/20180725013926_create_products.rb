class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.float :amount
      t.string :sku
      t.string :product_image

      t.timestamps
    end
  end
end
