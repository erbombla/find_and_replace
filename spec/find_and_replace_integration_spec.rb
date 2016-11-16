require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('processes user entry and returns specified words swapped')
  visit("/")
  fill_in("word", :with =>
end
