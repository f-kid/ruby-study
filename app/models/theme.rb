class Theme < ActiveRecord::Base
  has_many :comments
  validates_presence_of :orner, :title, :body
end

