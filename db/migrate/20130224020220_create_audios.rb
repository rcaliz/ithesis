class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :audio
      t.text :description

      t.timestamps
    end
  end
end
