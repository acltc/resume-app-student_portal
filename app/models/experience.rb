class Experience < ActiveRecord::Base
	attr_reader :start_date, :end_date, :job_title, :company_name

	def initialize(hash)
		@start_date = hash["start_date"]
		@end_date = hash["end_date"]
		@job_title = hash["job_title"]
		@company_name = hash[":company_name"]
	end

	def self.find(id)
		experience_hash = Unirest.get("http://localhost:3000/experiences/#{id}.json").body
    return Experience.new(experience_hash)
	end

	def self.all
		experiences_array = Unirest.get("http://localhost:3000/experiences.json").body["experiences"]
		@experiences = []
    experiences_array.each do |experience_hash|
      @experiences << Experience.new(experience_hash)
    end
	end
end
