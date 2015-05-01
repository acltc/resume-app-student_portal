class Student
  
  attr_reader :id, :first_name, :last_name, :email, :phone_number, :linkedin, :twitter, :blog, :online_resume, :github, :photo, :short_bio, :skills, :educations, :experiences, :references

  def initialize(student_hash)
    @id = student_hash["id"]
    @first_name = student_hash["first_name"]
    @last_name = student_hash["last_name"]
    @email = student_hash["email"]
    @phone_number = student_hash["phone_number"]
    @linkedin = student_hash["linkedin"]
    @twitter = student_hash["twitter"]
    @blog = student_hash["blog"]
    @online_resume = student_hash["online_resume"]
    @github = student_hash["github"]
    @photo = student_hash["photo"]
    @short_bio = student_hash["short_bio"]
    @skills = student_hash["skills"]
    @educations = student_hash["educations"]
    @experiences = student_hash["experiences"]
    @references = student_hash["references"]
  end

  def self.all
    grand_students_hash = Unirest.get("#{ENV["API_BASE_URL"]}/students.json").body
    @students = []
    grand_students_hash["students"].each do |student|
      @students << Student.new(student)
    end
    return @students
  end

  def self.find(id)
    student = Unirest.get("#{ENV["API_BASE_URL"]}/students/#{id}.json").body
    return Student.new(student)
  end

end