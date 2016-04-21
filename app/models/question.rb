class Question < ActiveRecord::Base
  has_many :responses, as: :respondable
  belongs_to :user
end
