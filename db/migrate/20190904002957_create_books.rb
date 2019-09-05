class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :integer
      t.string :title
      t.string :string
      t.string :stock
      t.string :integer

      t.timestamps
    end
  end
end
