class Story < ActiveRecord::Base
  validates :title, :body, presence: true
  
end
