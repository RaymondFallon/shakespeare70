# frozen_string_literal: true

# Initial Bio For Curt Foxworth

insert_name_HERE = Member.where(first_name: 'XXXX', last_name: 'XXXXXXX')
           .first_or_create!(exec_committee: 'Y', # BUT IS IT REALLY????
                             featured: 'Y',
                             title: 'XXXXXXXX',
                             bio: 'XXXXXXXXXXXXXXXXXXXX')

s70 = Company.where(name: "Shakespeare '70").first_or_create!

s70_bt = BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
oc_bt =  BioType.where(code: 'OC', description: 'Other Company').first_or_create!

actor =    Position.where(code: 'A', description: 'Actor').first_or_create!
director = Position.where(code: 'D', description: 'Director').first_or_create!
co_dir =   Position.where(code: 'CO', description: 'Co-Director').first_or_create!
a_dir =    Position.where(code: 'AD', description: 'Assistant Director').first_or_create!
pm =       Position.where(code: 'PM', description: 'Production Manager').first_or_create!
cpm =      Position.where(code: 'CPM', description: 'Co-Production Manager').first_or_create!
sm =       Position.where(code: 'SM', description: 'Stage Manager').first_or_create!

[
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  [s70, s70_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE']
].each do |casting|
  Casting.where(member: say_my_name_say_my_name,
                production: Production.where(company: casting[0], title: casting[3], year: casting[4]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[5])
end

[
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2099, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2098, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2098, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2098, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2098, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2098, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2098, 'NAME_OF_ROLE'],
  ['other_company', oc_bt, position, 'TITLE_OF_PLAY', 2097, 'NAME_OF_ROLE']
].each do |casting|
  Casting.where(member: say_my_name_say_my_name,
                production: Production.where(company: Company.where(name: casting[0]).first_or_create!,
                                             title: casting[3]).first_or_create!,
                position: casting[2],
                bio_type: casting[1]).first_or_create!(role: casting[4])
end
