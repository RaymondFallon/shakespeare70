# frozen_string_literal: true

# Initial Bio For Amanda McCarther

amanda = Member.where(first_name: 'Amanda', last_name: 'McCarther')
               .first_or_create!(title: 'Actor',
                                 featured: 'Y',
                                 bio: "Amanda McCarther is a 2008 graduate of Mount Union College, now the University of Mount Union, where she studied Theater and Creative Writing. She was a member of both the women's chorus and the Mount Union choir and studied voice privately. She also spent a summer in London studying Theater at London Metropolitan University. In 2014, she spent a summer teaching drama at Mercersburg Academy's ESL+ summer program. Amanda is the ELL Specialist and International Student Advisor at Stuart Country Day School of the Sacred Heart. This summer she will be teaching drama to K-4 students at the StuARTS summer camp at Stuart. Amanda made her first appearance with Shakespeare ‘70 in its 2015 production of <em>Hamlet</em> at the Kelsey Theater.",)
s70 = Company.where(name: "Shakespeare '70").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor = Position.where(code: 'A', description: 'Actor').first_or_create!

[
  [s70_bt, actor, 'Measure For Measure', 'Mariana'],
  [s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Ensemble'],
  [s70_bt, actor, 'The Heidi Chronicles', 'Jill'],
  [s70_bt, actor, 'Hamlet', 'The Player Queen']
].each do |casting|
  Casting.where(member: amanda,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['PCM Theatre Company', oc_bt, actor, 'American Prez', 'Senator Carla Amermueller'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'Witness for the Prosecution', 'Greta'],
  ['ActorsNET of Bucks County', oc_bt, actor, 'Red Velvet', 'Connie']
].each do |casting|
  Casting.where(member: amanda,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
