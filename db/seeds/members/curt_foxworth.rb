# frozen_string_literal: true

# Initial Bio For Curt Foxworth

curt = Member.where(first_name: 'Curt', last_name: 'Foxworth')
             .first_or_create!(exec_committee: 'Y',
                               featured: 'Y',
                               title: 'Director • Actor • Production Staff',
                               bio: "Curt Foxworth is a 2002 graduate of The College of New Jersey.  He studied improvisation at IO Theater in Chicago.  He is a member of SAG-AFTRA and currently teaches theater at Monmouth University.  Curt made his first appearance with Shakespeare ‘70 in its 2002 production of <em>A Midsummer Night's Dream</em> at Washington Crossing State Park.")

s70 = Company.where(name: "Shakespeare '70").first_or_create!
act = Company.where(name: "TCNJ's All College Theater").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
director = Position.where(code: 'D', description: 'Director').first_or_create!
co_dir =   Position.where(code: 'CO', description: 'Co-Director').first_or_create!
a_dir =    Position.where(code: 'AD', description: 'Assistant Director').first_or_create!
pm =       Position.where(code: 'PM', description: 'Production Manager').first_or_create!
cpm =      Position.where(code: 'CPM', description: 'Co-Production Manager').first_or_create!

[
    [s70, s70_bt, co_dir, 'Murder Most Foul: An Evening of Shakespeare', 2017],
    [s70, s70_bt, pm, 'Measure For Measure', 2017],
    [s70, s70_bt, actor, 'The Heidi Chronicles', 2017, 'Peter'],
    [s70, s70_bt, pm, 'Hamlet', 2016],
    [s70, s70_bt, cpm, 'Hedda Gabler', 2016],
    [s70, s70_bt, actor, "The Winter's Tale", 2015, 'Camillo'],
    [s70, s70_bt, director, 'Becky Shaw', 2015],
    [s70, s70_bt, actor, 'Much Ado About Nothing', 2014, 'Don John'],
    [s70, s70_bt, director, 'The Vortex', 2013],
    [s70, s70_bt, actor, 'As You Like It', 2013, 'Jaques'],
    [s70, s70_bt, a_dir, 'Antigone', 2011],
    [s70, s70_bt, actor, 'Hay Fever', 2005, 'Simon'],
    [s70, s70_bt, actor, 'The Way of the World', 2004, 'Petulant'],
    [s70, s70_bt, actor, 'Twelfth Night', 2004, 'Feste'],
    [s70, s70_bt, actor, "A Midsummer Night's Dream", 2002, 'Flute'],

    [act, oc_bt, director, 'Romeo & Juliet', 2014],
    [act, oc_bt, director, 'As You Like It', 2016],
    [act, oc_bt, director, 'The Secret in the Wings', 2017]
].each do |casting|
  Casting.where(member: curt,
                production: Production.where(company: casting[0], title: casting[3], year: casting[4]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[5])
end