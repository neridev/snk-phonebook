# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

sections = [
    { name: "GR" },
    { name: "e-Stratégia" },
    { name: "k-Služby" }
]
departments_GR = [
    { name: "Sekretariát GR",
      section_id: "1" },
    { name: "Vydavateľstvo",
      section_id: "1" }
]
departments_eS = [
    { name: "IKT",
      section_id: "2" },
    { name: "Digitalizačné centrum",
      section_id: "2" }
]
departments_kS = [
    { name: "Oddelenie študovní",
      section_id: "3" },
    { name: "Knižničný inšitút",
      section_id: "3" }
]

puts "Seeding sections..."
sections.each do |section|
    Section.create! section
end
puts "Seeding sections DONE!"

puts "Seeding departments GR..."
departments_GR.each do |department|
    Department.create! department
end
puts "Seeding departments GR DONE!"

puts "Seeding departments eS..."
departments_eS.each do |department|
    Department.create! department
end
puts "Seeding departments eS DONE!"


puts "Seeding departments kS..."
departments_kS.each do |department|
    Department.create! department
end
puts "Seeding departments kS DONE!"
