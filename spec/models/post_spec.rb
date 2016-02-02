require 'rails_helper'

describe Post, :type => :model do
  it "should not be valid without title" do
    post = FactoryGirl.build(:post, title: nil)
    expect(post).not_to be_valid
  end
end
