require 'rails_helper'

RSpec.describe StoryController, type: :controller do

  describe "create a story" do

    describe "create a valid story" do
      #arrange
      let!(:stub_story) do
        allow(Story).to recieve(:create) do
          double('story')
        end
      end
      #act
      let!(:post_story) {post :create, story: story_params}

      it 'redirect to update page' do
        #assert
        expect(response).to redirect_to(edit_story_path)
      end
    end

  end

end
