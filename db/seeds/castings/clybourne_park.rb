# frozen_string_literal: true

cp = Production.find_by(title: 'Clybourne Park')

this_season = BioType.find_by(code: 'TS')

actor =    Position.find_by(code: 'A')
director = Position.find_by(code: 'D')
a_dir =    Position.find_by(code: 'AD')
sm =       Position.find_by(code: 'SM')
set_d =    Position.find_by(code: 'SD')

Casting.where(member: Member.where(first_name: 'Janet', last_name: 'Quartarone').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Bev / Kathy', cast_order: 1)

Casting.where(member: Member.where(first_name: 'Tom', last_name: 'Stackhouse').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Russ / Dan', cast_order: 2)

Casting.where(member: Member.where(first_name: 'Sarah', last_name: 'Stryker').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Betsy / Lindsey', cast_order: 3)

Casting.where(member: Member.where(first_name: 'Jake', last_name: 'Burbage').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Karl / Steve', cast_order: 4)

Casting.where(member: Member.where(first_name: 'Amanda', last_name: 'McCarther').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Francine / Lena', cast_order: 5)

Casting.where(member: Member.where(first_name: 'Damien', last_name: 'Berger').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Albert / Kevin', cast_order: 6)

Casting.where(member: Member.where(first_name: 'Ray', last_name: 'Fallon').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Jim / Tom', cast_order: 7)

Casting.where(member: Member.where(first_name: 'Christopher', last_name: 'Loos').first_or_create!,
              position: actor,
              bio_type: this_season,
              production: cp
).first_or_create!(role: 'Kenneth', cast_order: 8)

Casting.where(member: Member.where(first_name: 'Curt', last_name: 'Foxworth').first_or_create!,
              position: director,
              bio_type: this_season,
              production: cp
).first_or_create!

Casting.where(member: Member.where(first_name: 'Brittany', last_name: 'Rivera').first_or_create!,
              position: a_dir,
              bio_type: this_season,
              production: cp
).first_or_create!

Casting.where(member: Member.where(first_name: 'Frank', last_name: 'Falisi').first_or_create!,
              position: a_dir,
              bio_type: this_season,
              production: cp
).first_or_create!

Casting.where(member: Member.where(first_name: 'Michael', last_name: 'Krahel').first_or_create!,
              position: sm,
              bio_type: this_season,
              production: cp
).first_or_create!

Casting.where(member: Member.where(first_name: 'Sarah', last_name: 'Stryker').first_or_create!,
              position: set_d,
              bio_type: this_season,
              production: cp
).first_or_create!
