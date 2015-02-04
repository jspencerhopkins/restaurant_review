class Restaurant < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	has_many :users, through: :reviews
end
