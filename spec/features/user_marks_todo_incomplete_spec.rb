require "rails_helper"


feature "User marks todo incomplete" do
  scenario "Succesfully" do
    sign_in
    
    create_todo("Buy milk")
    
    click_on "Mark complete"
    click_on "Mark incomplete"


    expect(page).not_to have_css ".todos li.completed"
    expect(page).to have_css ".todos li", text: "Buy milk"

  end
end 