class AddReunionidColumnToAudio < ActiveRecord::Migration
  def change
    add_column :audios, :reunion_id, :integer
  end
end
