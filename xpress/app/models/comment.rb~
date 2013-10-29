class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :comment, :commenter
  validates :comment, presence: true 
end
