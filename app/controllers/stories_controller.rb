class StoriesController < ApplicationController
  def index
    @stories = Story.all
    render :index
  end
  
  def create
    @story = Story.new(params[:story])
    
    if @story.save
      redirect_to stories_url
    else
      flash[:errors] = @story.errors
      render :new
    end
  end
  
  def new
    render :new
  end

end
