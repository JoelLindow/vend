require 'rails_helper'

feature "When a user visits a snack" do
  scenario "User sees a list of machine locations with this snack and average snack cost at machine" do
    owner = Owner.create(name: "Randys Snacks")
    machine = owner.machines.create(location: "Location_1")
    snack = machine.snacks.create(name: "Diet Dr Pepper", price: 3.00)
    machine.snacks.create(name: "Banana", price: 1.00)

    visit snack_path(snack)

    expect(page).to have_content("Diet Dr Pepper")
    expect(page).to have_content("Location_1")
    expect(page).to have_content("Average Snack Price: $2.00")


  end
end
