require 'test_helper'

feature 'creating a topic' do
  scenario 'user creates a topic' do

    # sign_in
    log_in
    save_and_open_page

    visit new_topic_path
    fill_in "Question", with: "What you know about that?"

    click_on "Create Topic"

    page.text.must_include "What you know about that?"
    page.text.must_include users(:two).email
  end
end
