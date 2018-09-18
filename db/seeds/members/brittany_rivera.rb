# frozen_string_literal: true

# Initial Bio For Brittany Rivera

brit = Member.where(first_name: 'Brittany', last_name: 'Rivera')
             .first_or_create!(title: 'Actor • Assistant Director • Professional Staff',
                               featured: 'Y',
                               bio: "Brittany Rivera is a 2013 graduate of The College of New Jersey.  She currently teaches language arts at Community Middle School in the West Windsor-Plainsboro School District and advises their stage crew.  Brittany made her first appearance with Shakespeare ‘70 in its 2015 production of <em>The Winter's Tale</em> at the Kelsey Theater at Mercer County Community College.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

this_s = BioType.where(code: 'TS', description: 'This Season').first_or_create!
s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
sm =       Position.where(code: 'SM', description: 'Stage Manager').first_or_create!
cost_con = Position.where(code: 'CC', description: 'Costume Consultant').first_or_create!
cost_des = Position.where(code: 'CD', description: 'Costume Designer').first_or_create!

[
  [this_s, actor, 'The Merry Wives of Windsor', 'Mistress Ford'],

  [s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Emcee'],
  [s70_bt, cost_con, 'The Heidi Chronicles'],
  [s70_bt, actor, 'Hamlet', "Ophelia's Lady-in-Waiting/Ensemble"],
  [s70_bt, sm, 'Hedda Gabler'],
  [s70_bt, cost_des, 'Hedda Gabler'],
  [s70_bt, actor, "The Winter's Tale", 'Mopsa/Ensemble']
].each do |casting|
  Casting.where(member: brit,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['Pennington Players', oc_bt, actor, 'In The Heights', 'Carla']
].each do |casting|
  Casting.where(member: brit,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
