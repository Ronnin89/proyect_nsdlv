class Profile < ApplicationRecord
    enum type_profile: [:director, :educadora, :nine, :apoderado]
    enum sex: [:masculino, :femenino, :otro]
    has_one :parent, dependent: :destroy
    has_one :child, dependent: :destroy
    has_one :educator, dependent: :destroy
    belongs_to :user, optional: true
end