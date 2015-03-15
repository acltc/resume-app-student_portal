class Education

attr_reader :degree, :university_name, :start_date, :end_date

def initialize(hash)
	@degree = ["degree"]
	@university_name = ["university_name"]
	@start_date = ["start_date"]
	@end_date = ["end_date"]
end

def self.find(id)
		education_hash = Unirest.get("http://localhost:3000/educations/#{id}.json").body
		@education = Education.new(education_hash)
	end

def self.all
		educations_hash = Unirest.get("http://localhost:3000/educations.json").body["deities"]
		@educations = []
		educations_hash.each do |education_hash|
			@educations << Education.new(education_hash)
		end
		
		@educations
	end




end