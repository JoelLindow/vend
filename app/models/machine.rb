class Machine < ApplicationRecord
  belongs_to :owner
  has_many :machines_snacks
  has_many :snacks, through: :machines_snacks

  def average_price
    # number_to_currency(snacks.average(:price))
    "#{snacks.average(:price)}0"
  end
end
