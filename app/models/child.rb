class Child < ApplicationRecord
  belongs_to :profile
  has_and_belongs_to_many :parents
end
