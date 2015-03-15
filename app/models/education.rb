class Education

attr_reader 


def initialize(hash)
	
end


def self.find(id)
		education_hash = Unirest.get("").body
		@education = Education.new(education_hash)
	end

end