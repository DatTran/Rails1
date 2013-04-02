class AnimeComment < ActiveRecord::Base
  belongs_to :anime
  attr_accessible :body, :commenter
end
