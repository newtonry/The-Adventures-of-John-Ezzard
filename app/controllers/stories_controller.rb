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
      flash[:errors] = @story.errors.full_messages
      render :new
    end
  end
  
  def new
    @story = Story.new
    render :new
  end

end
