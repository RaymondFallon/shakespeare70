# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

wwac = Venue.find_by(name: 'West Windsor Arts Center')

s70_bt = BioType.find_by(code: 'S70')

vortex = Production.where(company: s70,
                       venue: wwac,
                       title: 'The Vortex',
                       year: 2013).first_or_create!

[ # Cast
  ['Florence Lancaster', 'Janet', 'Quartarone'],
  ['Nicky Lancaster', 'Ray', 'Fallon'],
  ['Tom Verya', 'Patrick', 'Albanesius'],
  ['Bunty Mainwaring', 'Maddie', 'Patrick'],
  ['Helen Saville', 'Heather', 'Duncan'],
  ['Pauncefort “Pawnie” Quentin', 'Rupert', 'Hinton'],
  ['Clara Hibbert', 'Morgan', 'Petronis'],
  ['David Lancaster', 'Fred', 'Bartlett'],
  ['Bruce Fairlight', 'Andrew', 'Timmes'],
  ['Preston', 'Stephanie', 'Schoppe']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: vortex,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'Curt', 'Foxworth'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Assistant Stage Manager', 'Stephanie', 'Schoppe'],
  ['Producer', 'Janet', 'Quartarone'],
  ['Lighting Designer', 'Rob', 'Rutt'],
  ['Graphic Design', 'Drew', 'Griffiths']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: vortex,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

vortex.update(has_all_data: 'Y')
