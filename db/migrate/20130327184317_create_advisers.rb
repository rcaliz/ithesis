class CreateAdvisers < ActiveRecord::Migration
  def change
    create_table :advisers do |t|
      t.string :degree

      t.timestamps
    end
  end
end
