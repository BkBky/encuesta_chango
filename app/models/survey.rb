class Survey < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
  has_many :answers, through: :questions
  has_many :statistics
  belongs_to :user
  belongs_to :responder, class_name: "User"
end
