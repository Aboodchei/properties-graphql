class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :owner_email
      t.integer :property_type, default: 0, null: false, index: true

      t.timestamps
    end
  end
end
