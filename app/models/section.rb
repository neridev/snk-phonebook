class Section < ApplicationRecord

    has_many :departments

    validates :name, uniqueness: { case_sensitive: false, message: "Oddelenie musí byť unikátne" }, presence: true

end
