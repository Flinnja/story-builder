require 'rails_helper'

RSpec.describe StoryController, type: :controller do

  describe "create a story" do

    describe "create a valid story" do
      #arrange
      let!(:stub_story) do
        allow(Story).to receive(:create) do
          double('story', valid?: true)
        end
      end
      let(:example) {Story.create}
      let(:story_params) {{something: "anything"}}
      #act
      let!(:post_story) {post :create, story: story_params}

      it 'redirect to update page' do
        #assert
        expect(response).to redirect_to(edit_story_path(example))
      end
    end

  end

  describe "update a story (add a new line)" do

    describe "apply a valid update" do
      #arrange
      let!(:stub_story) do
        allow(Story).to receive(:find) do
          double('story', id: 1)
        end
        allow(Story).to receive(:update) do
          double('valid story', valid?: true)
        end
      end

      let(:update_params) {{newline: "new"}}
      #act
      let!(:patch_story) {patch :update, id: 1, story: update_params}

      it 'redirect to update page' do
        #assert
        expect(response).to redirect_to(edit_story_path("story"))
      end
    end
  end

end
