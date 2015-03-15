class StudentsController < ApplicationController
<<<<<<< HEAD

	def show
		 @student = Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body

	end

=======
	def show
		
    end



	end

	def edit

	end





>>>>>>> 725eb18b7fde0aa44c9e5cca8f7e4c89f790a18e
end
