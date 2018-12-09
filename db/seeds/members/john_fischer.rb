# frozen_string_literal: true

# Initial Bio For John Fischer

john = Member.where(first_name: 'John', last_name: 'Fischer')
             .first_or_create!(title: 'Actor',
                               featured: 'Y')
john.update(bio: "John graduated from the College of New Jersey in 2007 with a major in Physics and a minor in Theatre Arts. Since graduating, he has gone on to write lyrics and co-write the book for two full length musicals: <em>Star Wars! The Musical</em> and <em>Lemonade!</em> In 2015, he went on to receive a Ph.D. from the University of Pennsylvania. John briefly worked with the company in 2007 during their production of <em>Private Lives</em>, but he has been a consistently involved member of S70 since appearing in <em>Hamlet</em> in 2016. He currently resides in Hamilton, NJ with his extremely talented wife, Jen, and their two children.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!


s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
f_cap =    Position.where(code: 'FCpt', description: 'Fight Captain').first_or_create!
td =       Position.where(code: 'TD', description: 'Technical Director').first_or_create!
atd =      Position.where(code: 'ATD', description: 'Assistant Technical Director').first_or_create!
lyr =      Position.where(code: 'Lyr', description: 'Lyricist').first_or_create!

[
  [s70_bt, f_cap, 'Hamlet'],
  [s70_bt, atd, 'Private Lives']
].each do |casting|
  Casting.where(member: john,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['DSPN', oc_bt, actor, 'Have Spellbook, Will Travel', 'Thoven Battlebeard'],
  ['Philadelphia Plays & Players', oc_bt, actor, 'Superheroes Who Are Super', 'Superman/Spiderman'],
  ['Excelsior Theater Company', oc_bt, actor, 'Magic Time', 'Larry'],
  ["TCNJ's All College Theater", oc_bt, actor, "A Midsummer Night's Dream", 'Lysander'],
  ['Maurer Productions OnStage', oc_bt, actor, 'Fiddler on the Roof', 'Perchik'],
  ['Pennington Players', oc_bt, actor, 'Urinetown', 'Caldwell Cladwell'],
  ['Excelsior Theater Company', oc_bt, actor, 'Curtains', 'Aaron Fox'],
  ['UPenn: Pennsylvania Singers', oc_bt, actor, 'Curtains', 'Lt. Frank Cioffi'],
  ['Lebanon Community Theater', oc_bt, actor, 'Urinetown', 'Bobby Strong'],
  ['TCNJ Musical Theatre', oc_bt, actor, "You're a Good Man Charlie Brown", 'Linus'],
  ['Lebanon Community Theater', oc_bt, actor, 'Damn Yankees', 'Joe Hardy'],
  ['TCNJ Musical Theatre', oc_bt, td, "You're a Good Man Charlie Brown"],
  ['TCNJ Musical Theatre', oc_bt, td, 'How to Succeed in Business...'],
  ['UPenn: Pennsylvania Singers', oc_bt, atd, 'Curtains'],
  ['TCNJ Musical Theatre', oc_bt, lyr, 'Star Wars! The Musical'],
  ['End Of The World Theater', oc_bt, lyr, 'Lemonade!'],
  ['DSPN', oc_bt, lyr, 'Have Spellbook, Will Travel']
].each do |casting|
  Casting.where(member: john,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end