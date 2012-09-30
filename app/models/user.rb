class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body

  has_many :watches
  has_many :movies, through: :watches
end
