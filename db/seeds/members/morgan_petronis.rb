# frozen_string_literal: true

# Initial Bio For Morgan Petronis

morgan = Member.where(first_name: 'Morgan', last_name: 'Petronis')
               .first_or_create!(title: 'Actor',
                                 featured: 'Y',
                                 bio: "Morgan Petronis is a 2014 graduate of Temple University, and holds a M.A. in Elementary Education from the College of New Jersey, where she is currently taking graduate courses in Special Education. She has been teaching in New Jersey for over a decade. Morgan made her first appearance with Shakespeare '70 in its 2013 production of <em>The Vortex</em>.")

oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!
actor = Position.where(code: 'A', description: 'Actor').first_or_create!

[
  ['Langhorne Players', oc_bt, actor, 'It’s Only a Play', 'Julia Budder'],
  ['Langhorne Players', oc_bt, actor, 'Lend Me a Tenor', 'Maggie'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'Equivocation', 'Judith'],
  ['Villagers Theatre', oc_bt, actor, 'A Streetcar Named Desire', 'Stella'],
  ['Pennington Players', oc_bt, actor, 'The Miracle Worker', 'Kate Keller'],
  ['Pennington Players', oc_bt, actor, 'Steel Magnolias', 'Annelle']
].each do |casting|
  Casting.where(member: morgan,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
