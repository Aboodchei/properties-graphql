class CreateValuations < ActiveRecord::Migration[7.0]
  def change
    create_table :valuations do |t|
      t.references :property, null: false, foreign_key: true
      t.integer :optimal_price, default: 0, null: false
      t.integer :minimum_price, default: 0, null: false
      t.integer :maximum_payment_duration_months, default: 0, null: false

      t.timestamps
    end
  end
end
