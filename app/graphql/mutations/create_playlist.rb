module Mutations
  class CreatePlaylist < BaseMutation
    graphql_name "CreatePlaylist"
        
        field :playlist, Types::PlaylistType,null:true 
        argument :playlist_id,String,required:true
        argument :name,String,required:true
        argument :user_id,String,required:true
        
        
        def resolve(**args)
            playlist=Playlist.create!(args)
            {playlist:playlist}
        end
  end
end
