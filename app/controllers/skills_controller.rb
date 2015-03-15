class SkillsController < ApplicationController

  def index 
    @skills = Unirest.get("").body
  end

  def edit 

  end

  def create
    @skills = Unirest.post("http://localhost:3000/characters.json", :bio => params[:bio]}).body
    redirect_to _path(@character["id"])
  end 
end
