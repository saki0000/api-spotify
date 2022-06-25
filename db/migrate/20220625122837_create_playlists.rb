class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.text :playlist_id,null:false
      t.text :name,null:false
      # t.references :user,null:false

      t.timestamps
    end

  end
end
