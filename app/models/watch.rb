class Watch < ActiveRecord::Base

  belongs_to :user
  belongs_to :movie

  attr_accessible :movie_id, :user_id, :status


end
