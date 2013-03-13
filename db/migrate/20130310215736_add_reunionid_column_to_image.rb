class AddReunionidColumnToImage < ActiveRecord::Migration
  def change
    add_column :images, :reunion_id, :integer
  end
end
