class Response < ActiveRecord::Base
  belongs_to :discussion
  attr_accessible :responder, :response1
end
