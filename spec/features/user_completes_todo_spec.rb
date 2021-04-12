require "rails_helper"


feature "User completes a todo" do
  scenario "Succesfully" do
    sign_in
    
    create_todo("Buy milk")
    
    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed"
  end
end