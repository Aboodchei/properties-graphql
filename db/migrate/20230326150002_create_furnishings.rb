class CreateFurnishings < ActiveRecord::Migration[7.0]
  def change
    create_table :furnishings do |t|
      t.references :property, null: false, foreign_key: true
      t.integer :overall_furnishing_level, default: 0, null: false, index: true
      t.boolean :furniture_deductible, default: false, null: false, index: true
      t.integer :total_furniture_cost, default: 0, null: false, index: true

      t.timestamps
    end
  end
end
