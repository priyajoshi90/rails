class Discussion < ActiveRecord::Base
  belongs_to :blogger
  has_many :responses, dependent: :destroy
  attr_accessible :detail, :topic
end
