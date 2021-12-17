class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:query].present?
      @movies = @movies.where('title ILIKE ?', "%#{params[:query]}%")
    end
  end
end
