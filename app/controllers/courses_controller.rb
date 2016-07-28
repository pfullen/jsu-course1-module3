class CoursesController < ApplicationController
  def index
  	@search_term =  params[:looking_for] || 'jhu'
  	courses = Coursera.for(@search_term)
    if courses == nil
    	@search_term = "Python"
    	@courses = Coursera.for(@search_term)
    elsif 
    	@courses = courses

    end
    	


  end
end
