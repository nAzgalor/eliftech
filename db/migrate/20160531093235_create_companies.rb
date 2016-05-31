class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.decimal :price, precision: 12, scale: 2
      t.decimal :subprice, precision: 12, scale: 2
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.integer :children_count

      t.timestamps null: false
    end
  end
end
