# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :uid, String
    field :name, String
    field :avatar, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :playlists,Types::PlaylistType.connection_type,null:false
  end
end
