class Pin < ActiveRecord::Base
	validates_presence_of :url, :comment, :image
end
