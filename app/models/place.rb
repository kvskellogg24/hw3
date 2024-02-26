class Place < ApplicationRecord
  # talks to the "places" table
  has_many :posts
end
