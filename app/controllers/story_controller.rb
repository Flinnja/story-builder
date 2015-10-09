class StoryController < ApplicationController

  def create
    @story = Story.create
    if @story.valid?
      redirect_to edit_story_path(@story)
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    # if @story.update(@story).valid?
      redirect_to edit_story_path(@story.id)
    # end
  end
end
