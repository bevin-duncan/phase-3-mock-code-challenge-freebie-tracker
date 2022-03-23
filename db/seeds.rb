

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


freebies = ["water bottle", "tee-shirt", "yo-yo", "mug", "pens", "towel"]
 
  freebies.each do |freebie|
    Freebie.create(item_name: freebie, value: rand(10..50), company_id: Company.ids.sample, dev_id: Dev.ids.sample)
end

# value = rand(10..100)
# company_id = Company.ids.sample
# dev_id = Dev.ids.sample

# I DONT UNDERSTAND why this isn't seeding the value, company_id, and dev_id values?? What am I missing?!


# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
