class Snack < ApplicationRecord
  has_many :machines_snacks
  has_many :machines, through: :machines_snacks
end
