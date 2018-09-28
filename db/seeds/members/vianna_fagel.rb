# frozen_string_literal: true

# Initial Bio For Vianna Fagel

vianna = Member.where(first_name: 'Vianna', last_name: 'Fagel')
               .first_or_create!(title: 'Actor • Production Staff',
                                 featured: 'Y',
                                 bio: "Vianna Fagel is a 2013 graduate of The College of New Jersey where she studied Statistics with minors in Music and Religion. She currently works in Analytics at Horizon Blue Cross Blue Shield of NJ. Vianna made her first appearance with Shakespeare ‘70  in its 2014 production of <em>Much Ado About Nothing</em> at the Kelsey Theater. ")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
lights =   Position.where(code: 'LD', description: 'Lighting Designer').first_or_create!
sm =       Position.where(code: 'SM', description: 'Stage Manager').first_or_create!

[
  [s70_bt, lights, 'The Heidi Chronicles'],
  [s70_bt, actor, 'Hamlet', 'Ensemble'],
  [s70_bt, actor, "The Winter's Tale", 'Emilia (Present at the opening of the fardel)'],
  [s70_bt, actor, 'Much Ado About Nothing', 'Ursula']
].each do |casting|
  Casting.where(member: vianna,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['Pennington Players', oc_bt, sm, 'The Hunchback of Notre Dame'],
  ['Pennington Players', oc_bt, sm, 'Violet'],
  ['Playful Theater Productions', oc_bt, actor, 'Big Fish', 'Josephine'],
  ['Playful Theater Productions', oc_bt, actor, 'Jesus Christ Superstar', 'Mary Magdalene'],
  ['PinnWorth Productions', oc_bt, actor, 'A Funny Thing ... Forum', 'Panacea'],
  ['TCNJ Musical Theatre', oc_bt, actor, 'Footloose', 'Vi'],
  ['TCNJ Musical Theatre', oc_bt, actor, 'Pippin', 'Berthe'],
  ['TCNJ Musical Theatre', oc_bt, actor, 'Bare', 'Claire']
].each do |casting|
  Casting.where(member: vianna,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
