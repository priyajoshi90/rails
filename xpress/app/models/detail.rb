class Detail < ActiveRecord::Base
  belongs_to :blogger
  attr_accessible :address, :dob, :firstname, :gender, :hobbies, :lastname, :role
end
