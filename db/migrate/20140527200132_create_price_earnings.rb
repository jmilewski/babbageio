class CreatePriceEarnings < ActiveRecord::Migration
  def change
    create_table :price_earnings do |t|
      t.integer :price
      t.integer :earnings
      t.integer :petotal

      t.timestamps
    end
  end
end
