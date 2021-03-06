require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('searches a sentence for a specific word and replaces word') do
    visit('/')
    fill_in('sentence', :with => 'hello cat' )
    fill_in('word', :with => 'cat')
    fill_in('replace', :with => 'robot')
    click_button('Submit')
    expect(page).to have_content('hello robot')
  end
end
