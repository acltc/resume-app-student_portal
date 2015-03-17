class SkillsController < ApplicationController

  def index
    @student = Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body
  end

  def edit
    @skill = Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body
  
  end 

  def update
    @skills = Unirest.patch("http://localhost:3000/students/#{params[:id]}.json", :headers => {"Accept" => "application/json"}, :parameters => {:skill_name => params[:skill_name]}).body
    redirect_to skills_path
  end 

  def new

  end

  def create
    @skills = Unirest.post("http://localhost:3000/students/#{params[:id]}.json", :headers => {"Accept" => "application/json"}, :parameters => {:skill_name => params[:skill_name]}).body
    redirect_to skills_path
  end
end
