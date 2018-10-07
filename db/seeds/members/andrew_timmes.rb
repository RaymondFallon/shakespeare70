# frozen_string_literal: true

# Initial Bio For Andrew Timmes

andy = Member.where(first_name: 'Andrew', last_name: 'Timmes')
             .first_or_create!(title: 'Actor • Sound Designer',
                               featured: 'Y',
                               bio: "Andrew Timmes is a 2009 graduate of The College of New Jersey, where he was active in All College Theatre and TCNJ Musical Theatre.  He is presently employed by Princeton University as a systems administrator.  Andrew made his first appearance with Shakespeare '70 in <em>A View From The Bridge</em> at TCNJ's Don Evans Black Box Theater in 2009.  He married company member Lili Timmes in 2016.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor = Position.where(code: 'A', description: 'Actor').first_or_create!

[
  [s70_bt, actor, "A Midsummer Night's Dream", 'Demetrius'],
  [s70_bt, actor, 'Twelfth Night', 'Sebastian'],
  [s70_bt, actor, 'The Tempest', 'Antonio'],
  [s70_bt, actor, 'A View From The Bridge', 'Officer']
].each do |casting|
  Casting.where(member: andy,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['Pennington Players', oc_bt, actor, 'The Hunchback of Notre Dame', 'Clopin'],
  ['M&M Productions', oc_bt, actor, 'Boeing Boeing', 'Robert'],
  ['Maurer Productions OnStage', oc_bt, actor, 'Lend Me a Tenor', 'Max'],
  ['End Of The World Theater', oc_bt, actor, 'Lemonade!', 'Director / Roger Tontine']
].each do |casting|
  Casting.where(member: andy,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
