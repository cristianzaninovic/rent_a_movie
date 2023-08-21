class Movie < ApplicationRecord
  has_many :clients
  accepts_nested_attributes_for :clients
end
