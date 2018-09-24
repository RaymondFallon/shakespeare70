# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

wwac = Venue.find_by(name: 'West Windsor Arts Center')

s70_bt = BioType.find_by(code: 'S70')

cmt = Production.where(company: s70,
                          venue: wwac,
                          title: 'Circle Mirror Transformation',
                          year: 2014).first_or_create!

[ # Cast
  ['Schultz', 'Ernie', 'Albanesius'],
  ['James', 'Scott', 'Karlin'],
  ['Lauren', 'Tara', 'Mershon'],
  ['Theresa', 'Maryalice', 'Rubins-Topoleski'],
  ['Marty', 'Carol', 'Thompson']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: cmt,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'Janet', 'Quartarone'],
  ['Assistant Director', 'Lili', 'Timmes'],
  ['Stage Manager', 'Andrew', 'Timmes'],
  ['Lighting Designer', 'Michael', 'Krahel'],
  ['Business Manager', 'Tom', 'Curbishley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: cmt,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

cmt.update(has_all_data: 'Y')

