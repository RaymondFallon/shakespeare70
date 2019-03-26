# frozen_string_literal: true

# Initial Bio For Janet Quartarone

janet = Member.where(first_name: 'Janet', last_name: 'Quartarone')
              .first_or_create!(exec_committee: 'Y',
                                featured: 'Y',
                                title: 'Actor • Director • Producer',
                                bio: "Janet is also an alum of The College of New Jersey/Trenton State College, like many Company members.  She studied with Uta Hagen’s protégé Carol Rosenfeld at HB Studio.  She is a member of AEA & SAG-AFTRA, and is a Simulator, V.P., and Director of Marketing with SIMULATIONS, Inc.  Janet made her first appearance with Shakespeare ‘70 in its production of <em>A Woman of No Importance</em> in the Don Evans Black Box at The College of New Jersey.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

this_s = BioType.where(code: 'TS', description: 'This Season').first_or_create!
s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
director = Position.where(code: 'D', description: 'Director').first_or_create!
co_dir =   Position.where(code: 'CO', description: 'Co-Director').first_or_create!
a_dir =    Position.where(code: 'AD', description: 'Assistant Director').first_or_create!

[
  [s70_bt, a_dir, 'The Merry Wives of Windsor'],

  [s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Ensemble'],
  [s70_bt, co_dir, 'Murder Most Foul: An Evening of Shakespeare'],
  [s70_bt, actor, 'Hamlet', 'Gertrude'],
  [s70_bt, director, "The Winter's Tale"],
  [s70_bt, director, 'Circle Mirror Transformation'],
  [s70_bt, actor, 'The Vortex', 'Florence'],
  [s70_bt, actor, 'God of Carnage', 'Veronica']
].each do |casting|
  Casting.where(member: janet,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ["TCNJ's All College Theater", oc_bt, director, 'Stop Kiss'],
  ["TCNJ's All College Theater", oc_bt, director, 'The Importance of Being Earnest'],
  ['Passage Theatre Company', oc_bt, actor, 'Mad Dreams (staged reading)', 'Augusta'],
  ['Independent Short Film', oc_bt, actor, 'Autumn', 'Ensemble'],
  ["TCNJ's All College Theater", oc_bt, director, 'Metamorphoses'],
  ['Chimera Productions', oc_bt, actor, 'Becky Shaw', 'Susan']
].each do |casting|
  Casting.where(member: janet,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
