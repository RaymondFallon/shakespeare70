# frozen_string_literal: true

# Initial Bio For Michael Krahel

mike = Member.where(first_name: 'Michael', last_name: 'Krahel')
             .first_or_create!(exec_committee: 'Y',
                               featured: 'Y',
                               title: 'Actor • Production Staff • Director',
                               bio: "Michael Krahel graduated from The College of New Jersey in 2009. He currently works as an administrative analyst for the New Jersey Department of Environmental Protection.  Mike made his first appearance with Shakespeare ‘70 in its 2008 production of <em>The Skin of Our Teeth</em> at TCNJ’s Kendall Main Stage.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

this_bt = BioType.where(code: 'TS', description: 'This Season').first_or_create!
s70_bt =  BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =   BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
director = Position.where(code: 'D', description: 'Director').first_or_create!
lights =   Position.where(code: 'LD', description: 'Lighting Designer').first_or_create!
sm =       Position.where(code: 'SM', description: 'Stage Manager').first_or_create!

[
    [s70, this_bt, actor, 'The Merry Wives of Windsor', 'Frank Ford'],

    [s70, s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Ensemble'],
    [s70, s70_bt, lights, 'Murder Most Foul: An Evening of Shakespeare'],
    [s70, s70_bt, actor, 'Measure for Measure', 'Claudio'],
    [s70, s70_bt, actor, "The Doctor's Dilemma", 'Louis Dubedat'],
    [s70, s70_bt, actor, 'Hamlet', 'Rosencrantz'],
    [s70, s70_bt, director, 'Hedda Gabler'],
    [s70, s70_bt, actor, 'Becky Shaw', 'Max Garrett'],
    [s70, s70_bt, actor, "The Winter's Tale", "Shepherd's Son"],
    [s70, s70_bt, lights, "The Winter's Tale"],
    [s70, s70_bt, actor, 'Much Ado About Nothing', 'Conrad'],
    [s70, s70_bt, actor, 'As You Like It', 'Silvius'],
    [s70, s70_bt, actor, "A Midsummer Night's Dream", 'Peter Quince'],
    [s70, s70_bt, actor, 'Twelfth Night', 'Sir Andrew Aguecheek'],
    [s70, s70_bt, actor, 'The Tempest', 'Sebastian'],
    [s70, s70_bt, actor, 'The Importance of Being Earnest', 'Gribsby'],
    [s70, s70_bt, actor, 'A View from the Bridge', 'Mike/Immigration Officer'],
    [s70, s70_bt, sm, 'A View from the Bridge'],
    [s70, s70_bt, actor, 'Romeo and Juliet', "Sampson/Apothecary/Paris's Page"],
    [s70, s70_bt, actor, 'The Skin of Our Teeth', 'Mr. Fitzpatrick'],
    [s70, s70_bt, sm, 'The Skin of Our Teeth']

].each do |casting|
  Casting.where(member: mike,
                production: Production.where(company: casting[0], title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end

[
  ['Playmasters Playhouse', oc_bt, actor, '6 Rms Riv Vu', 'Paul Friedman'],
  ['Playmasters Playhouse', oc_bt, actor, 'Barefoot in the Park', 'Paul Bratter'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'Sherlock Holmes', 'Sherlock Holmes'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'The Man Who Came to Dinner', 'Beverly Carlton/Sandy'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'Uncle Vanya', 'Yefim'],
  ['ActorsNET of Bucks County', oc_bt, sm, 'Uncle Vanya'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'Much Ado About Nothing', 'Verges'],
  ['ActorsNET of Bucks County', oc_bt, sm, 'Much Ado About Nothing'],
  ['Langhorne Players', oc_bt, actor, "It's Only a Play", 'Frank Finger']
].each do |casting|
  Casting.where(member: mike,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end