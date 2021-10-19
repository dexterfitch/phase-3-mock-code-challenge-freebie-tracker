Company.delete_all
Dev.delete_all
Freebie.delete_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Sticker", value: 0.99)
Freebie.create(item_name: "Great Pen", value: 2.00)
Freebie.create(item_name: "Luggage Tag", value: 0.25)
Freebie.create(item_name: "Notebook", value: 4.00)

puts "Seeding done!"
