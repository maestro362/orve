class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :client_id
      t.integer :seller_id
      t.integer :product_id
      t.decimal :price
      t.integer :number
      t.decimal :total

      t.timestamps
    end
  end
end
