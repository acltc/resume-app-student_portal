class StudentsController < ApplicationController

	def show
		 @student = Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body

	end

end
