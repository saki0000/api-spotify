# frozen_string_literal: true

module Types
  class PlaylistType < Types::BaseObject
    field :id, ID, null: false
    field :playlist_id, String
    field :name,String
    field :user_id, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
