class User < ApplicationRecord
	has_many :gossyps
	has_many :likes
	has_many :primary_comments
	belongs_to :city

end
