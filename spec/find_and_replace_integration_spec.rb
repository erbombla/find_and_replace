require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path') {:type => :feature}) do
  it('processess user input and displays replacement word') do
    visit('/')
    fill_in('output', :with => 'hello world')
    click_button('Submit')
    expect(page).to have_content('hello world')
  end
end
