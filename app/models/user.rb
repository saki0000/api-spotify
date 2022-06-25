class User < ApplicationRecord
    # self.primary_key = "uid"
    has_many :playlist
end
