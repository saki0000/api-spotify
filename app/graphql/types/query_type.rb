module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :user,[Types::UserType],null:false,description: "User Info" do
      argument :uuid,String,required:true
    end
    def user(uuid:)
      User.where(uid: uuid)
    end

    field :users,Types::UserType.connection_type,null:false
    def users
      User.all
    end

    field :user_playlists,Types::PlaylistType.connection_type,null:false,description:"User's Playlists" do
      argument :uuid,String,required:true
    end
    def user_playlists(uuid:)
      Playlist.where(user_id: uuid)
    end

    field :playlists,Types::PlaylistType.connection_type,null:false,description:"All Playlists"
    def playlists
      Playlist.all
    end
  end
end
