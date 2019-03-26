# frozen_string_literal: true

# Initial Bio For Lili Timmes

lili = Member.where(first_name: 'Lili', last_name: 'Timmes')
             .first_or_create!(title: 'Production Staff • Director • Actor • Stage Manager',
                               featured: 'Y',
                               bio: "Lili Timmes is a 2008 graduate of The College of New Jersey, where she studied English and Communication Studies with a concentration in Drama, and a 2011 graduate of Seton Hall University School of Law, where she was a competitor on the Interscholastic Moot Court Board.  She practices law by day and is studying to become a certified yoga instructor.  She first worked with Shakespeare '70 on its 2007 production of <em>Private Lives</em>.  She married company member Andrew Timmes in 2016.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

this_s = BioType.where(code: 'TS', description: 'This Season').first_or_create!
s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
director = Position.where(code: 'D', description: 'Director').first_or_create!
a_dir =    Position.where(code: 'AD', description: 'Assistant Director').first_or_create!
pm =       Position.where(code: 'PM', description: 'Production Manager').first_or_create!
cpm =      Position.where(code: 'CPM', description: 'Co-Production Manager').first_or_create!
sm =       Position.where(code: 'SM', description: 'Stage Manager').first_or_create!
asm =      Position.where(code: 'ASM', description: 'Assistant Stage Manager').first_or_create!
pa =       Position.where(code: 'PA', description: 'Production Assistant').first_or_create!
intern =   Position.where(code: 'I', description: 'Intern').first_or_create!

[
  [s70_bt, sm, 'The Merry Wives of Windsor'],

  [s70_bt, sm, 'Measure For Measure'],
  [s70_bt, director, 'The Heidi Chronicles'],
  [s70_bt, pm, "The Doctor's Dilemma"],
  [s70_bt, sm, 'Hamlet'],
  [s70_bt, cpm, 'Hedda Gabler'],
  [s70_bt, actor, 'Becky Shaw', 'Becky Shaw'],
  [s70_bt, sm, "The Winter's Tale"],
  [s70_bt, a_dir, 'Circle Mirror Transformation'],
  [s70_bt, sm, 'Much Ado About Nothing'],
  [s70_bt, sm, 'The Vortex'],
  [s70_bt, sm, 'As You Like It'],
  [s70_bt, sm, 'God of Carnage'],
  [s70_bt, sm, "A Midsummer Night's Dream"],
  [s70_bt, sm, 'Antigone'],
  [s70_bt, pa, 'Twelfth Night'],
  [s70_bt, sm, 'The Tempest'],
  [s70_bt, sm, 'The Importance of Being Earnest'],
  [s70_bt, sm, 'Romeo and Juliet'],
  [s70_bt, sm, 'The Taming of the Shrew'],
  [s70_bt, sm, 'The Constant Wife'],
  [s70_bt, asm, 'The Glass Menagerie'],
  [s70_bt, asm, 'The Merchant of Venice'],
  [s70_bt, intern, 'Private Lives']
].each do |casting|
  Casting.where(member: lili,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['Somerset Valley Players', oc_bt, actor, 'California Suite', 'Gert'],
  ['PCM Theatre Company', oc_bt, actor, 'American Prez', 'Jayme'],
  ['Langhorne Players', oc_bt, actor, 'Vanya & Sonia & Masha & Spike', 'Nina'],
  ['Pegasus Theatre Company', oc_bt, sm, 'Proof'],
  ['Pegasus Theatre Company', oc_bt, sm, 'Chapter Two'],
  ['Pennington Players', oc_bt, asm, 'Glengarry Glen Ross'],
  ['Eden', oc_bt, sm, 'Eden Dreams Benefit Gala']
].each do |casting|
  Casting.where(member: lili,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end