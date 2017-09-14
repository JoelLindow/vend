require 'rails_helper'

feature "When a user visits a specific vending machine page" do
  scenario "User can see average price of snacks in machine" do

    owner = Owner.create(name: "Randys Snacks")
    machine = owner.machines.create(location: "Turing Basement")
    machine.snacks.create(name: "Randy's Jerkey", price: 3.00)
    machine.snacks.create(name: "Soap Flavored Chips", price: 1.00)
    machine.snacks.create(name: "Diet Dr Pepper", price: 3.00)
    machine.snacks.create(name: "Diet Dr Pepper", price: 1.00)


    visit machine_path(machine)


    expect(page).to have_content("Average Snack Price: $2.00")


    # As a user
    # When I visit a specific vending machine page
    # I see the name of all of the snacks associated with that vending machine along with their price

  end
end
