class ExperiencesController < ApplicationController

	def show
    @experience = Experience.find(params[:id])
  end

	def edit
		@experience = Unirest.post("http://localhost:3000/experience.json", :headers => {"Accept" => "application/json"}, :parameters => {:start_date => params[:start_date], :end_date => params[:end_date], :job_title => params[:job_title], :company_name => params[:company_name]}).body
	end

end
