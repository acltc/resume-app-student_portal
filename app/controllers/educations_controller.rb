class EducationsController < ApplicationController
	def show
		@education = Education.find(params[:id])
	end

	
	def edit
		# @education = Education.find(params[:id])
		@education = Unirest.get("http://localhost:3000/educations/#{params[:id]}.json").body
	end

	def update
		@education = Unirest.patch("http://localhost:3000/educations/#{params[:id]}.json")
			:headers => {"Accept" => "application/json"}, 
			:parameters => {
				:degrees => params[:degrees], 
				:university_name => params[:university_name], 
				:start_date => params[:start_date], 
				:end_date => params[:end_date]}).body
    	  redirect_to students_path
	end

	def new
		
	end

	def create
		@education = Unirest.post("http://localhost:3000/educations/#{params[:id]}.json", 
			:headers => {"Accept" => "application/json"}, 
			:parameters => {
				:degree => params[:degree], 
				:university_name => params[:university_name], 
				:start_date => params[:start_date],
				:end_date => params[:end_date]}).body
		redirect_to students_path
	end

end
