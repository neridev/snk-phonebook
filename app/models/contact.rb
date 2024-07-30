require 'csv'

class Contact < ApplicationRecord

    belongs_to :department, optional: true

    validates :meno, presence: true
    #validates :meno, :priezvisko, presence: true

    enum :pohlavie, muž: 0, žena: 1

    def contact_department_name
        self.department.name
    end

    def contact_section_name
        self.department.section.name
    end

    def self.to_csv
        attributes = %w{id meno priezvisko titul_pred titul_za klapka verejne_cislo sluzobny_mobil pohlavie contact_department_name contact_section_name}
    
        CSV.generate(headers: true) do |csv|
            csv << attributes
        
            all.each do |contact|
                csv << attributes.map{ |attr| contact.send(attr) }
            end
        end
    end

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            contact = find_by(id: row["id"]) || new
            contact.attributes = row.to_hash.slice(*attribute_names)
            contact.save!
        end
    end
    

end
