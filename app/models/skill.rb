class Skill

  attr_reader :skill_name

  def initialize(hash)
    @skill_name = hash["skill_name"]

  end

  # def self.all
  #   skills_array = Unirest.get("http://localhost:3000/students/#{id}.json").body["skills"] 

  #   @skills = []
  #   skills_array.each do |skill_hash|
  #     @skills << Skill.new(skill_hash)
  #   end
  #   return @skills
  # end

end