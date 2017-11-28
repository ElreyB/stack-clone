class Answer < ActiveRecord::Base
  has_many :votes, as: :votable
  belongs_to :question
end
