class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body

  has_many :watches
  has_many :movies, through: :watches

  def as_json(options)
    super(only: [:id, :email, :created_at, :updated_at])
  end
end
