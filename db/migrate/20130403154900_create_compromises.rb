class CreateCompromises < ActiveRecord::Migration
  def change
    create_table :compromises do |t|
      t.string :description
      t.date :date
      t.boolean :state
      t.integer :reunion_id

      t.timestamps
    end
  end
end
