class Blog < ActiveRecord::Base
  belongs_to :blogger
  has_many :comments, dependent: :destroy
  attr_accessible :content, :no_of_comments, :title

  searchable do 
  	text :title, :boost => 5
  	text :content
  	text :no_of_comments
  	text :comments do
  		comments.map(&:comment)
  	end 
  end
end
