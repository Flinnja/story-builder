class StoryController < ApplicationController
  def create
    @story = Story.create
    if @story.valid?
      redirect_to edit_story_path(@story)
    end
  end

  def edit
  end
end
