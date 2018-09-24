# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Kelsey Theatre')

s70_bt = BioType.find_by(code: 'S70')

much_ado = Production.where(company: s70,
                          venue: kelsey,
                          title: 'Much Ado About Nothing',
                          year: 2014).first_or_create!

[ # Cast
  ['Leonato', 'Dale', 'Simon'],
  ['Hero', 'Paige', 'Matt'],
  ['Beatrice', 'Sarah', 'Stryker'],
  ['Antonio', 'C. Jameson', 'Bradley'],
  ['Margaret', 'Morgan', 'Petronis'],
  ['Ursula', 'Vianna', 'Fagel'],
  ['Don Pedro', 'Aaron', 'Wexler'],
  ['Claudio', 'Garrett', 'Verdone'],
  ['Benedick', 'Ray', 'Fallon'],
  ['Balthasar', 'Andrew', 'Timmes'],
  ['Don John', 'Curt', 'Foxworth'],
  ['Borachio', 'Jake', 'Burbage'],
  ['Conrade', 'Michael', 'Krahel'],
  ['Dogberry', 'John', 'Eldis'],
  ['Verges', 'Jim', 'Bloss'],
  ['Hugh Oatcake', 'Ernie', 'Albanesius'],
  ['George Seacoal', 'Dan', 'Altobelli'],
  ['Francis Pickbone', 'Anthony', 'Coppola'],
  ['Friar Francis', 'Dan', 'Keyser'],
  ['Matteo', 'Tristan', 'Curbishley']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: much_ado,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'John', 'Erath'],
  ['Producer', 'John', 'Erath'],
  ['Assistant Director', 'Janet', 'Quartarone'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Assistant Stage Manager', 'Chelsea', 'Daniel'],
  ['Assistant Stage Manager', 'Stephanie', 'Schoppe'],
  ['Technical Director', 'Dale', 'Simon'],
  ['Set Designer', 'Dale', 'Simon'],
  ['Lighting Designer', 'Rob', 'Rutt'],
  ['Sound Designer', 'Rob', 'Rutt'],
  ['Videographer', 'Rich', 'Albe'],
  ['Photographer', 'Rich', 'Kowalski'],
  ['Graphic Design', 'Chris', 'Whitpan'],
  ['Set Construction', 'C. Jameson', 'Bradley'],
  ['Set Construction', 'Dale', 'Simon'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Original Music Composition', 'Hannah', 'Adamy'],
  ['Dramaturg', 'Patrick', 'Maley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: much_ado,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

much_ado.update(has_all_data: 'Y')
