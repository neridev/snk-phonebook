class Contact < ApplicationRecord

    belongs_to :department

    validates :meno, :priezvisko, presence: true

    enum :pohlavie, muž: 0, žena: 1

end
