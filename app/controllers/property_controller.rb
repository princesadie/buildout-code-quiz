class PropertyController < ApplicationController

	def show
		@leases_belonging_to_property = []
		@property = JSON.parse(open("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/properties/#{params[:id]}.json").read)
		all_leases = JSON.parse(open("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/lease_spaces.json?limit=200").read)
		all_leases["lease_spaces"].each do |unit|
			if unit["property_id"] == @property["property"]["id"]
				@leases_belonging_to_property << unit
			end
		end
	end

end
