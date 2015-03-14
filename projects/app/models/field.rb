class Article < ActiveRecord::Base
  has_many :projects
  validates :title, presence: true,
                    length: { minimum: 5 }
end