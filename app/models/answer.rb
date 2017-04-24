class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :statistics  
  has_many :users, through: :statistics
  belongs_to :question
  
end
