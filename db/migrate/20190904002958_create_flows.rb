class CreateFlows < ActiveRecord::Migration[5.2]
  def change
    create_table :flows do |t|
      t.integer :previousStock
      t.integer :newStock
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
