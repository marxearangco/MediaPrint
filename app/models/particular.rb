class Particular < ActiveRecord::Base
	belongs_to :customer
	has_many :pictures
	accepts_nested_attributes_for :picture, :allow_destroy => true
end
