class Anime < ActiveRecord::Base
  attr_accessible :summary, :title
  validates :title,  :presence => true
  validates :summary, :presence => true,
                    :length => { :minimum => 50 }
  has_many :comments
end
