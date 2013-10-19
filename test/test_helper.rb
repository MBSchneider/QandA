ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails"
require "minitest/rails/capybara"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
#  include Capybara::RSpecMatchers
  include Capybara::DSL
end

def log_in
  visit topics_path
  save_and_open_page
  click_on "Sign in"
  save_and_open_page
  fill_in "Email", with: users(:two).email
  fill_in "Password", with: "twotwotwo"
  click_button "Sign in"
end
