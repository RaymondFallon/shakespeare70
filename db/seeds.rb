# frozen_string_literal: true

s70 = Company.where(name: "Shakespeare '70").first_or_create!
Company.where(name: 'ActorsNET of Bucks County').first_or_create!
Company.where(name: 'Algonquin Arts').first_or_create!
Company.where(name: 'Circle Players').first_or_create!
Company.where(name: 'Eden Dreams Benefit Gala').first_or_create!
Company.where(name: 'Greenpoint Plays in Brooklyn').first_or_create!
Company.where(name: 'Holmes County Arts Center').first_or_create!
Company.where(name: 'Langhorne Players').first_or_create!
Company.where(name: 'New York Thespis Festival').first_or_create!
Company.where(name: 'Pegasus Theatre Company').first_or_create!
Company.where(name: 'Pennington Players').first_or_create!
Company.where(name: 'PCM Theater Company').first_or_create!
Company.where(name: 'Philadelphia Fringe Festival').first_or_create!
Company.where(name: 'PinnWorth Productions').first_or_create!
Company.where(name: 'Playful Theater Productions').first_or_create!
Company.where(name: 'Playhouse 22').first_or_create!
Company.where(name: 'Playmasters Playhouse').first_or_create!
Company.where(name: 'Spotlight Players').first_or_create!
Company.where(name: "TCNJ's All College Theater").first_or_create!
Company.where(name: 'TCNJ Musical Theatre').first_or_create!

Position.where(code: 'A', description: 'Actor').first_or_create!(bio_order: 0)
Position.where(code: 'AD', description: 'Assistant Director').first_or_create!(bio_order: 12)
Position.where(code: 'ASM', description: 'Assistant Stage Manager').first_or_create!(bio_order: 21)
Position.where(code: 'APM', description: 'Assistant Production Manager').first_or_create!(bio_order: 41)
Position.where(code: 'BM', description: 'Business Manager').first_or_create!(bio_order: 100)
Position.where(code: 'CO', description: 'Co-Director').first_or_create!(bio_order: 11)
Position.where(code: 'CC', description: 'Costume Consultant').first_or_create!(bio_order: 81)
Position.where(code: 'CD', description: 'Costume Designer').first_or_create!(bio_order: 80)
Position.where(code: 'CPM', description: 'Co-Production Manager').first_or_create!(bio_order: 42)
Position.where(code: 'D', description: 'Director').first_or_create!(bio_order: 10)
Position.where(code: 'Dr', description: 'Dramaturg').first_or_create!(bio_order: 110)
Position.where(code: 'GD', description: 'Graphic Design').first_or_create!(bio_order: 92)
Position.where(code: 'I', description: 'Intern').first_or_create!(bio_order: 999)
Position.where(code: 'LD', description: 'Lighting Designer').first_or_create!(bio_order: 50)
Position.where(code: 'P', description: 'Producer').first_or_create!(bio_order: 43)
Position.where(code: 'PD', description: 'Production Designer').first_or_create!(bio_order: 45)
Position.where(code: 'Ph', description: 'Photographer').first_or_create!(bio_order: 91)
Position.where(code: 'PA', description: 'Production Assistant').first_or_create!(bio_order: 44)
Position.where(code: 'PM', description: 'Production Manager').first_or_create!(bio_order: 40)
Position.where(code: 'SM', description: 'Stage Manager').first_or_create!(bio_order: 20)
Position.where(code: 'SnD', description: 'Sound Designer').first_or_create!(bio_order: 60)
Position.where(code: 'SD', description: 'Set Designer').first_or_create!(bio_order: 70)
Position.where(code: 'TD', description: 'Technical Director').first_or_create!(bio_order: 30)
Position.where(code: 'V', description: 'Videographer').first_or_create!(bio_order: 90)

BioType.where(code: 'TS', description: 'This Season').first_or_create!
BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
BioType.where(code: 'OC', description: 'Other Company').first_or_create!
BioType.where(code: 'NF', description: 'Not Featured').first_or_create!


Dir[Rails.root.join('db/seeds/venues/**')].each { |f| require f }
Dir[Rails.root.join('db/seeds/productions/s70_productions')].each { |f| require f } # S70 Productions Without Castings
Dir[Rails.root.join('db/seeds/members/**')].each { |f| require f }
Dir[Rails.root.join('db/seeds/productions/**')].each { |f| require f } # Castings for all of the shows
Dir[Rails.root.join('db/seeds/castings/**')].each { |f| require f }