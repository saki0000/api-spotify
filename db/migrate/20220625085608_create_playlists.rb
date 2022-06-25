class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.text :playlist_id
      t.text :user_id

      t.timestamps
    end
  end
end
