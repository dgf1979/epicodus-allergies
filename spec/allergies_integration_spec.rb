require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Index form', {:type => :feature}) do
  it('accepts a fixnum (allergy score) and displays a list of allergies') do
    visit('/')
    fill_in('allergy_s', :with => '96')
    click_button('Send')
    expect(page).to have_content('eggs, chocolate')
  end
end
