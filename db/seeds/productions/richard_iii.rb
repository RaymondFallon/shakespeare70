# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Don Evans Black Box Theater')

this_bt = BioType.find_by(code: 'TS')

richard = Production.where(company: s70,
                           venue: kelsey,
                           title: 'Richard III',
                           year: 2019).first_or_create!
richard.update(start_date: '16/10/2019',
               end_date: '20/10/2019',
               description: "In Richard III, one of Shakespeare's most notorious (and entertaining) villains lies and murders his way to the English throne.  The Bard's inherent understanding of human nature and its flaws makes this centuries-old history play feel chillingly relevant as an exploration of power, ambition, and politics.  When seen through a modern lens, this story of a dangerous tyrant proves Ben Johnson's belief that Shakespeare was \"not of an age, but for all time!\"")

[ # Cast
  ['', 'Jim', 'Bloss'],
  ['', 'Jake', 'Burbage'],
  ['', 'Mary', 'Kierst'],
  ['', 'Michael', 'Krahel'],
  ['', 'Morgan', 'Petronis'],
  ['', 'Hannah', 'Rapaport-Stein'],
  ['', 'Brittany', 'Rivera'],
  ['', 'Andrew', 'Timmes']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: richard,
                position: Position.find_by(code: 'A')).first_or_create!(role: casting[0],
                                                                        cast_order: idx,
                                                                        bio_type: this_bt)
end



[ # Pro-staff
  ['Director', 'Curt', 'Foxworth'],
  ['Assistant Director', 'Amanda', 'McCarther'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Producer', 'Kayla', 'Elizabeth'],
  ['Sound Designer', 'Christopher', 'Loos'],
  ['Assistant Stage Manager', 'Gwyneth', 'Curbishley'],
  ['Assistant Stage Manager', 'Tina', 'Kulick'],
  ['Costume Designer', 'Janet', 'Quartarone']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: richard,
                position: Position.find_by(description: casting[0])).first_or_create!(bio_type: this_bt)
end

richard.update(has_all_data: 'Y')