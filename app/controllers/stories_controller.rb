class StoriesController < ApplicationController
  def index
    @stories = Story.all.reverse
    render :index
  end
  
  def create
    params[:story][:author_ip] = request.env['REMOTE_ADDR'];
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
