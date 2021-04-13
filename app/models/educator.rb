class Educator < ApplicationRecord
  enum type_educator: [:parvularia, :tecnico_parvularia, :practicante, :otros]
  belongs_to :profile
end
