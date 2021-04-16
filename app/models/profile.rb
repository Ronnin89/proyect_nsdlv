class Profile < ApplicationRecord
    enum type_profile: [:director, :educadora, :nine, :apoderado]
    enum sex: [:masculino, :femenino, :otro]
    has_one :parent, dependent: :destroy
    has_one :child, dependent: :destroy
    has_one :educator, dependent: :destroy
    belongs_to :user, optional: true
    has_one_attached :avatar
    accepts_nested_attributes_for :child
    accepts_nested_attributes_for :educator

    scope :child_request, -> { where(:type_profile => 2).order(:last_names)}
    
    scope :educator_request, -> { where(:type_profile => 1).order(:last_names)}

end