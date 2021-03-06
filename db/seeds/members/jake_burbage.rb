# frozen_string_literal: true

# Initial Bio For Jake Burbage

jake = Member.where(first_name: 'Jake', last_name: 'Burbage')
             .first_or_create!(title: 'Actor • Director',
                               featured: 'Y',
                               bio: "Jake has been acting for the last 20 years on both the stage and screen. As a child, he starred in the television sitcom <em>Grounded For Life</em> from 2000-2004, and voiced the role of Benny the Bull on Nickelodeon's <em>Dora the Explorer</em>.  Jake currently acts on and writes for the Amazon web series <em>Nuke City</em>, and will soon be seen co-anchoring a new political talk show satire entitled <em>Fake News Nightly,</em> premiering in 2019. He is a member of SAG-AFTRA and Actors Equity. He made his first appearance with Shakespeare '70 in their 2014 summer production of <em>Much Ado About Nothing</em>.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
cp = Company.where(name: 'Circle Players').first_or_create!
gp = Company.where(name: 'Greenpoint Plays in Brooklyn').first_or_create!
hcac = Company.where(name: 'Holmes County Arts Center').first_or_create!
act = Company.where(name: "TCNJ's All College Theater").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt = BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor = Position.where(code: 'A', description: 'Actor').first_or_create!
co_dir = Position.where(code: 'CO', description: 'Co-Director').first_or_create!

[
    [s70, s70_bt, co_dir, 'Murder Most Foul: An Evening of Shakespeare'],
    [s70, s70_bt, actor, 'Hamlet', 'Laertes'],
    [s70, s70_bt, actor, 'Much Ado About Nothing', 'Borachio'],

    [cp, oc_bt, actor, 'Rosencrantz & Guildenstern are Dead', 'Guildenstern'],
    [gp, oc_bt, actor, 'God of Carnage', 'Michael'],
    [hcac, oc_bt, actor, 'Our Town', 'Stage Manager'],
    [act, oc_bt, actor, 'Romeo & Juliet', 'Romeo'],
    [act, oc_bt, actor, 'Proof', 'Robert']
].each do |casting|
  Casting.where(member: jake,
                production: Production.where(company: casting[0], title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end