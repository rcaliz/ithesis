class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.string :description
      t.references :adviser

      t.timestamps
    end
    add_index :theses, :adviser_id
  end
end
