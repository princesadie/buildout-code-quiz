require 'open-uri'

class HomeController < ApplicationController
	def index
		@request_sale_properties = JSON.parse(open("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/properties.json?limit=50").read)
		# @request_lease_properties = JSON.parse(open("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/lease_spaces.json?limit=5").read)
	end
end
