class SkillsController < ApplicationController

  def show 
    @skills = Unirest.get("http://localhost:3000/skills/#{:id}.json").body
  end

  def update
    @skills = Unirest.patch("http://localhost:3000/skills/#{:id}.json", :headers => {"Accept" => "application/json"}, :parameters => :skill_name => params[:skill_name]}).body
    redirect_to skills_path
  end 

  def edit
  
  end 
end
