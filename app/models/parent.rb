class Parent < ApplicationRecord
  belongs_to :profile
  has_and_belongs_to_many :children
end
