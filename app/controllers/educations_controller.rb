class EducationsController < ApplicationController
	def show
		@education = Education.find(params[:id])
	end

	
end
