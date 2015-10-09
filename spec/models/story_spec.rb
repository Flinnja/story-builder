require 'rails_helper'

RSpec.describe Story, type: :model do
  it "is valid w/ correct credentials" do
    # FactoryGirl.create(:story).should be_valid
    story = Story.new(
      title: "Four Devs",
      lines: ["123123123wsdzfsdtesrf"],
      authors: ["sdfsdfsd"])
    expect(story).to be_valid
  end


  it "is invalid without a title" do
    expect(Story.new).to_not be_valid
  end

  it "can add a new line"

  it "adds a new author"
end
