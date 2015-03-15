class SkillsController < ApplicationController
<<<<<<< HEAD

  def show 
    @skills = Unirest.get("http://localhost:3000/skills/#{:id}.json").body
  end

  def update
    @skills = Unirest.patch("http://localhost:3000/skills/#{:id}.json", :headers => {"Accept" => "application/json"}, :parameters => :skill_name => params[:skill_name]}).body
    redirect_to skills_path
  end 

  def edit
  
  end 
=======
	def show


	end

	def edit


	end


>>>>>>> 1bee11237d0dcdffde30b78e6d92cbfdd21ea319
end
