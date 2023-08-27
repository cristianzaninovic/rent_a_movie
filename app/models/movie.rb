class Movie < ApplicationRecord
  has_many :clients, dependent: :nullify
  accepts_nested_attributes_for :clients
end
