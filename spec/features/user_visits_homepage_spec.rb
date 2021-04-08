require "rails_helper"

feature "User visits homepage" do
  scenario "succesfully" do
    visit root_path

    expect(page).to have_css 'h1', text: 'Todos'
  end
end