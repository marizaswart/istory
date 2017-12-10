class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @stories = Story.all
    @story = Story.find(params[:id])
    @first_chapter = @story.chapters.first
  end
end
