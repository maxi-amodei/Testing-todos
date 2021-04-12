require "rails_helper"


feature "User creates a todo" do
  scenario "succesfully" do
    sign_in
    
    create_todo("Buy milk")

    expect(page).to have_css ".todos li", text: "Buy milk"
  end
end