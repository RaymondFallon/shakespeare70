# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Kelsey Theatre')

s70_bt = BioType.find_by(code: 'S70')

hamlet = Production.where(company: s70,
                               venue: kelsey,
                               title: 'Hamlet',
                               year: 2016).first_or_create!

[ # Cast
  ['Hamlet', 'Ray', 'Fallon'],
  ['Claudius', 'Steve', 'Lobis'],
  ['Gertrude', 'Janet', 'Quartarone'],
  ['Horatio', 'John', 'Fischer'],
  ['Polonius',  'Dale', 'Simon'],
  ['Ophelia', 'Shannon', 'McGovern'],
  ['Laertes', 'Jake', 'Burbage'],
  ['Rosencrantz', 'Michael', 'Krahel'],
  ['Guildenstern', 'Jim', 'Bloss'],
  ['Osric', 'Andrew', 'Timmes'],
  ['Marcellus / Fortinbras', 'Robert-Alonzo', 'Gray'],
  ['Barnardo', 'Timothy', 'Kirk'],
  ['Francisco', 'Spencer', 'Makow'],
  ['Ghost of Hamlet’s father', 'George', 'Hartpence'],
  ['First Player', 'Tom', 'Curbishley'],
  ['Player King', 'Patrick', 'Rounds'],
  ['Player Queen', 'Amanda', 'McCarther'],
  ['Gravedigger', 'Matthew', 'Cassidy'],
  ['The Gravedigger’s Assistant', 'Steve', 'Munoz'],
  ['Lady-in-waiting to Gertrude', 'Jackie', 'Wasneski'],
  ['Lady-in-waiting to Ophelia', 'Vianna', 'Fagel'],
  ['Lady-in-waiting to Ophelia', 'Brittany', 'Rivera'],
  ['Soldier', 'Tristan', 'Curbishley']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: hamlet,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'John', 'Erath'],
  ['Assistant Director', 'Janet', 'Quartarone'],
  ['Production Manager', 'Curt', 'Foxworth'],
  ['Assistant Production Manager', 'Kayla', 'Elizabeth'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Production Designer', 'Dale', 'Simon'],
  ['Fight Choreographer', 'Stephen', 'Davis'],
  ['Assistant Stage Manager', 'Gwyneth', 'Curbishley'],
  ['Videographer', 'Rich', 'Albe'],
  ['Photographer', 'Rich', 'Kowalski'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Dramaturg', 'Patrick', 'Maley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: hamlet,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

hamlet.update(has_all_data: 'Y')
