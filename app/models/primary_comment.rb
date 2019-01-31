class PrimaryComment < ApplicationRecord
	belongs_to :user
	belongs_to :gossyp
	has_many :secondary_comments
	
end
