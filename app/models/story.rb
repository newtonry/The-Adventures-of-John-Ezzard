class Story < ActiveRecord::Base
  attr_accessible :title, :body, :author_ip
  validates :title, :body, presence: true
end
