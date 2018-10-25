class User < ApplicationRecord

	has_many :articles
	has_many :likes
	has_many :comments
end
