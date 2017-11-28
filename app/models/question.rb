class Question < ActiveRecord::Base
  has_many :votes, as: :votable
  has_many :answers
end
