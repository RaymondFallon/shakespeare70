# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

oa_pac = Venue.find_by(name: 'Open Arts PAC')

s70_bt = BioType.find_by(code: 'S70')

heidi = Production.where(company: s70,
                          venue: oa_pac,
                          title: 'The Heidi Chronicles',
                          year: 2017).first_or_create!

[ # Cast
  ['Heidi Holland', 'Kayla', 'Elizabeth'],
  ['Susan Johnston', 'Jen', 'Newby'],
  ['Peter Patrone', 'Curt', 'Foxworth'],
  ['Scoop Rosenbaum', 'Frank', 'Falisi'],
  ['Jill/Sandra/Clara', 'Amanda', 'McCarther'],
  ['Fran/Betsy', 'Giz', 'Coughlin'],
  ['Becky/April', 'Morgan', 'Petronis'],
  ['Lisa/Debbie', 'Erin', 'Leder'],
  ['Denise/Molly', 'Jessica', 'Braynor'],
  ['Chris Boxer/Mark/TV Attendant/Waiter/Ray', 'John', 'Fischer']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: heidi,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'Lili', 'Timmes'],
  ['Stage Manager', 'Ray', 'Fallon'],
  ['Producer', 'Curt', 'Foxworth'],
  ['Costume Designer', 'Brittany', 'Rivera'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Assistant Director', 'Sarah', 'Stryker'],
  ['Assistant Stage Manager', 'Gwyneth', 'Curbishley'],
  ['Technical Director', 'John', 'Fischer'],
  ['Scenic Design', 'Alexa', 'Logush'],
  ['Lighting Designer', 'Vianna', 'Fagel'],
  ['Sound Designer', 'Andrew', 'Timmes'],
  ['Technical Advisor', 'Dale', 'Simon']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: heidi,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

heidi.update(has_all_data: 'Y')
