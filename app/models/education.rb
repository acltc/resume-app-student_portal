class Education

attr_reader :id, :degree, :university_name, :start_date, :end_date

def initialize(hash)
	@id = hash['id']
	@degree = hash["degree"]
	@university_name = hash["university_name"]
	@start_date = hash["start_date"]
	@end_date = hash["end_date"]
end

def self.find(id)
		educations_hash = Unirest.get("http://localhost:3000/students/#{id}.json").body
			education_hash = educations_hash['educations']
			@education = nil
			education_hash.each do |education|
				@education = Education.new(education) if education['id'] == id
			end


		@education

	end

# def self.all
# 		educations_hash = Unirest.get("http://localhost:3000/educations.json").body["educations"]
# 		@educations = []
# 		educations_hash.each do |education_hash|
# 			@educations << Education.new(education_hash)
# 		end
		
# 		@educations
# 	end

# def self.create()
# 	education_hash = Unirest.post("http://localhost:3000/educations.json", 
# 			:headers => {"Accept" => "application/json"}, 
# 			:parameters => {
# 				:degree => params[:degree], 
# 				:university_name => params[:university_name], 
# 				:start_date => params[:start_date],
# 				:end_date => params[:end_date]}).body

# 			@education = Education.new(education_hash)
# 			@education.save

# 		redirect_to education_path(@education["id"])
# end


end