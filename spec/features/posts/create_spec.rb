require 'rails_helper'

describe "Posts" do

  it "shows error message when title is blank" do
    post = FactoryGirl.build(:post, title: nil)
    visit '/'
    click_link "New Post"
    fill_in "Title", with: post.title
    fill_in "Body", with: post.body
    click_button "Create post"
    expect(page).to have_content("Title can't be blank")
  end
end
