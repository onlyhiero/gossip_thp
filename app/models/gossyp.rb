class Gossyp < ApplicationRecord
	belongs_to :user
	has_many :tags
	has_many :primary_comments
	has_many :likes
end
