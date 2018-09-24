# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

oa_pac = Venue.find_by(name: 'Open Arts PAC')

s70_bt = BioType.find_by(code: 'S70')

becky = Production.where(company: s70,
                         venue: oa_pac,
                         title: 'Becky Shaw',
                         year: 2015).first_or_create!

[ # Cast
  ['Max Garrett', 'Michael', 'Krahel'],
  ['Suzanna Slater', 'Sarah', 'Stryker'],
  ['Susan Slater', 'Carol', 'Thompson'],
  ['Becky Shaw', 'Lili', 'Timmes'],
  ['Andrew Porter', 'Ray', 'Fallon']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: becky,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'Curt', 'Foxworth'],
  ['Stage Manager', 'Tia', 'Brown'],
  ['Producer', 'Lili', 'Timmes'],
  ['Assistant Stage Manager', 'Morgan', 'Teller'],
  ['Assistant Stage Manager', 'Hannah', 'Knight'],
  ['Lighting Designer', 'Starrika', 'McCloud'],
  ['Sound Designer', 'Stephanie', 'Schoppe'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Technical Advisor', 'Dale', 'Simon']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: becky,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

becky.update(has_all_data: 'Y')
