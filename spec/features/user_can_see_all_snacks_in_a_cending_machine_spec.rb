require 'rails_helper'

feature "When a user visits a specific vending machine page" do
  scenario "User can see all snacks associated with that vending machine" do

    owner = Owner.create(name: "Randys Snacks")
    machine = owner.machines.create(location: "Turing Basement")
    snack_1 = machine.snacks.create(name: "Randy's Jerkey", price: 32.50)
    snack_2 = machine.snacks.create(name: "Soap Flavored Chips", price: 1.00)
    snack_3 = machine.snacks.create(name: "Diet Dr Pepper", price: 1.50)

    visit machine_path(machine)


    expect(page).to have_content("Randy's Jerkey")
    expect(page).to have_content("$32.50")
    expect(page).to have_content("Soap Flavored Chips")
    expect(page).to have_content("$1.00")
    expect(page).to have_content("Diet Dr Pepper")
    expect(page).to have_content("$1.50")

    # As a user
    # When I visit a specific vending machine page
    # I see the name of all of the snacks associated with that vending machine along with their price

  end
end
