# frozen_string_literal: true

# Initial Bio For Frank Falisi

frank = Member.where(first_name: 'Frank', last_name: 'Falisi')
            .first_or_create!(featured: 'Y',
                              title: 'Actor • Assistant Director • Production Staff',
                              bio: "Frank graduated from Rutgers University in 2014 with a major in English and minor in Cinema Studies. He currently teaches theater and improvisation at Algonquin Arts Theatre in Manasquan. Frank is also a staff writer at Tiny Mix Tapes, where he writes about music, popular culture, and <em>Mamma Mia! Here We Go Again</em>.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!

[
  [s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Ensemble'],
  [s70_bt, actor, 'The Heidi Chronicles', 'Scoop'],
  [s70_bt, actor, 'Hedda Gabler', 'George Tesman']
].each do |casting|
  Casting.where(member: frank,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['NENA Theater Project', oc_bt, actor, 'A New Brain', 'Roger'],
  ['Algonquin Arts', oc_bt, actor, 'Harvey', 'Elwood'],
  ['Algonquin Arts', oc_bt, actor, 'Laughter on the 23rd Floor', 'Lucas'],
  ['Algonquin Arts', oc_bt, actor, 'The Wizard of Oz', 'Scarecrow'],
  ['Pegasus Theatre Company', oc_bt, actor, 'Chapter Two', 'Leo'],
  ['Langhorne Players', oc_bt, actor, 'Betrayal', 'Jerry'],
  ['Playhouse 22', oc_bt, actor, 'Urinetown', 'Lockstock'],
  ['Pennington Players', oc_bt, actor, 'Picasso at the Lapin Agile', 'Picasso'],
  ['Spotlight Players', oc_bt, actor, "Singin' in the Rain", 'Cosmo'],
  ['Spotlight Players', oc_bt, actor, 'How to Succeed in Business...', 'Finch']
].each do |casting|
  Casting.where(member: frank,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
