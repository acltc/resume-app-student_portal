class EducationsController < ApplicationController
	def show
		@education = Education.find(params[:id])
	end

	
	def edit
		@education = Education.find(params[:id])
	end

	def new
		
	end

	def create
		@education = Unirest.post("http://localhost:3000/students/#{params[:id]}.json", 
			:headers => {"Accept" => "application/json"}, 
			:parameters => {
				:degree => params[:degree], 
				:university_name => params[:university_name], 
				:start_date => params[:start_date],
				:end_date => params[:end_date]}).body

		redirect_to education_path(@education["id"])
	end

end
