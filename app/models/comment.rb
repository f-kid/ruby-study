class Comment < ActiveRecord::Base
  belongs_to :theme
#  validates_presence_of :c_orner, :c_title, :c_body
end


