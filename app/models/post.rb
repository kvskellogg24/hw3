class Post < ApplicationRecord
  # talks to the "posts" table
  belongs_to :place
end
