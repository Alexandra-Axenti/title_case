require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the title case path', {:type => :feature}) do
    it('processes the user entry and returns it title cased') do
      visit('/')
      fill_in('title', :with => "a beautiful and serene morning, isn't it")
      click_button('Send')
      save_and_open_page
      expect(page).to have_content("A Beautiful and Serene Morning, Isn't It")
    end
  end
