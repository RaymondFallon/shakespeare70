# frozen_string_literal: true

# Initial Bio For Kayla Elizabeth

kayla = Member.where(first_name: 'Kayla', last_name: 'Elizabeth')
              .first_or_create!(exec_committee: 'Y',
                                featured: 'Y',
                                title: 'Actor • Production Staff',
                                bio: "Kayla Elizabeth earned her B.F.A. in Acting & Directing in 2007 from the University of Rhode Island. In addition to her training there, she has completed Shakespeare intensives at The Gamm theater in Rhode Island and Film & TV intensives at The Actor's Green Room in New York. Kayla's first appearance with Shakespeare '70 was in the 2016 production of <em>Hedda Gabler</em>.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
nytf = Company.where(name: 'New York Thespis Festival').first_or_create!
pt = Company.where(name: 'Pegasus Theatre').first_or_create!
pcm = Company.where(name: 'PCM Theater').first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt = BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor = Position.where(code: 'A', description: 'Actor').first_or_create!
apm = Position.where(code: 'APM', description: 'Assistant Production Manager').first_or_create!
director = Position.where(code: 'D', description: 'Director').first_or_create!

[
  [s70, s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Ensemble'],
  [s70, s70_bt, apm, 'Hamlet'],
  [s70, s70_bt, actor, 'The Heidi Chronicles', 'Heidi'],
  [s70, s70_bt, actor, 'Hedda Gabler', 'Hedda Gabler'],

  [nytf, oc_bt, actor, 'The Empty Chair', 'Katherine'],
  [pcm, oc_bt, actor, 'American Prez', 'Leslie'],
  [pcm, oc_bt, director, 'The Fallen'],
  [pt, oc_bt, actor, 'Proof', 'Catherine']
].each do |casting|
  Casting.where(member: kayla,
                production: Production.where(company: casting[0], title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end