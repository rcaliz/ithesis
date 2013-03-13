class CreateReunions < ActiveRecord::Migration
  def change
    create_table :reunions do |t|
      t.datetime :date
      t.string :subject
      t.time :duration
      t.string :place

      t.timestamps
    end
  end
end
