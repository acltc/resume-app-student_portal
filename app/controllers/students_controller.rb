class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Unirest.post("http://localhost:3000/students.json", 
    :headers => {"Accept" => "application/json"}, 
    :parameters => 
    {:first_name => params[:first_name], 
    :last_name => params[:last_name], 
    :email => params[:email], 
    :phone_number => params[:phone_number], 
    :linkedin => params[:linkedin], 
    :twitter => params[:twitter], 
    :blog => params[:blog], 
    :online_resume => params[:online_resume], 
    :github => params[:github], 
    :photo => params[:photo], 
    :short_bio => [:short_bio]}).body
    redirect_to student_path(@student["id"])
  end

  def update
    student = Student.find(params[:id])
    @student = student.update
    ({
      :first_name => params[:first_name], 
      :last_name => params[:last_name], 
      :email => params[:email], 
      :phone_number => params[:phone_number], 
      :linkedin => params[:linkedin], 
      :twitter => params[:twitter], 
      :blog => params[:blog], 
      :online_resume => params[:online_resume], 
      :github => params[:github], 
      :photo => params[:photo], 
      :short_bio => params[:short_bio]
      })
    # @student = Unirest.patch("http://localhost:3000/students/#{params[:id]}.json", 
    # :headers => {"Accept" => "application/json"}, 
    # :parameters => 
    # {:first_name => params[:first_name], 
    # :last_name => params[:last_name], 
    # :email => params[:email], 
    # :phone_number => params[:phone_number], 
    # :linkedin => params[:linkedin], 
    # :twitter => params[:twitter], 
    # :blog => params[:blog], 
    # :online_resume => params[:online_resume], 
    # :github => params[:github], 
    # :photo => params[:photo], 
    # :short_bio => params[:short_bio]}).body
    redirect_to "students/#{@student.id}"
  end
	
end