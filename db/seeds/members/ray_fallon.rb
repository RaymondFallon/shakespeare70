# frozen_string_literal: true

# Initial Bio For Ray Fallon

ray = Member.where(first_name: 'Ray', last_name: 'Fallon')
            .first_or_create!(featured: 'Y',
                              title: 'Actor • Webmaster',
                              bio: "Ray has a real Bachelor’s from TCNJ (English, ‘09) and a fake Bachelor’s from MIT (Computer Science, ‘17). He got involved with S70 through a TCNJ internship program in ’08 and has gone from intern to member to Executive Committee member. He had a brief stint in Los Angeles, but mostly acts in South and Central Jersey.  Ray made this website and takes criticism well, so… let’em hear it!")

ray.update(exec_committee: nil)

s70 = Company.where(name: "Shakespeare '70").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
sm =       Position.where(code: 'SM', description: 'Stage Manager').first_or_create!
asm =      Position.where(code: 'ASM', description: 'Assistant Stage Manager').first_or_create!
pm =       Position.where(code: 'PM', description: 'Production Manager').first_or_create!

[
  [s70_bt, actor, 'Murder Most Foul: An Evening of Shakespeare', 'Ensemble'],
  [s70_bt, pm, 'Murder Most Foul: An Evening of Shakespeare'],
  [s70_bt, actor, 'Hamlet', 'Hamlet'],
  [s70_bt, actor, "The Winter's Tale", 'Polixenes'],
  [s70_bt, actor, 'Becky Shaw', 'Andrew Porter'],
  [s70_bt, actor, 'The Vortex', 'Nicky'],
  [s70_bt, actor, 'Measure For Measure', 'Angelo'],
  [s70_bt, sm, 'The Heidi Chronicles'],
  [s70_bt, actor, 'Hedda Gabler', 'Eilert Løvborg'],
  [s70_bt, actor, 'Much Ado About Nothing', 'Benedick'],
  [s70_bt, actor, 'As You Like It', 'Orlando'],
  [s70_bt, actor, 'Twelfth Night', 'Sea Captain'],
  [s70_bt, actor, 'The Tempest', 'Ferdinand'],
  [s70_bt, actor, 'Romeo and Juliet', 'Paris'],
  [s70_bt, actor, 'The Importance of Being Earnest', 'Algernon'],
  [s70_bt, asm, 'Candida']
].each do |casting|
  Casting.where(member: ray,
                production: Production.where(company: s70, title: casting[2]).first_or_create!,
                position: casting[1],
                bio_type: casting[0]).first_or_create!(role: casting[3])
end

[
  ['End Of The World Theater', oc_bt, actor, 'Lemonade!', 'Chic/Ensemble'],
  ['TCNJ Musical Theatre', oc_bt, actor, 'Star Wars! The Musical!', 'Han Solo'],
  ['Theater To Go', oc_bt, actor, 'A Streetcar Named Desire', 'Brick'],
  ['Philadelphia Plays & Players', oc_bt, actor, 'Superheroes Who Are Super', 'Ensemble'],
  ['Four Letter Theatre', oc_bt, actor, 'Twylight Zone: Return To The 6th Dimension', 'Don / Mechanic']
].each do |casting|
  Casting.where(member: ray,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
