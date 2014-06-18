class Fscountry < ActiveRecord::Base
	has_many :fscities
	has_many :fsstates
end
