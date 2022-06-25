class AddUserToPlaylist < ActiveRecord::Migration[6.1]
  def change
    add_reference :playlists, :user, null: false,type: :text
  end
end
