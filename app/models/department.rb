class Department < ApplicationRecord

    belongs_to :section
    has_many :contacts

    validates :name, uniqueness: { case_sensitive: false, scope: :section, message: "Odbor musí byť unikátny" }, presence: true

end
