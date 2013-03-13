class AddReunionidColumnToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :reunion_id, :integer
  end
end
