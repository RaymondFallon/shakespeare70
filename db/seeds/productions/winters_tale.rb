# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Kelsey Theatre')

s70_bt = BioType.find_by(code: 'S70')

wt = Production.where(company: s70,
                          venue: kelsey,
                          title: "The Winter's Tale",
                          year: 2015).first_or_create!

[ # Cast
  ['Leontes', 'Andrew', 'Timmes'],
  ['Hermione', 'Sarah', 'Stryker'],
  ['Camillo', 'Curt', 'Foxworth'],
  ['Paulina',  'Kyla', 'Mostello Donnelly'],
  ['Antigonus', 'Aaron', 'Wexler'],
  ['Antigonus', 'John', 'Bergeron'],
  ['Dion', 'Jack', 'Bathke'],
  ['Cleomenes', 'Jim', 'Bloss'],
  ['Mamillius', 'Zakir', 'Zaidi'],
  ['Emilia', 'Vianna', 'Fagel'],
  ['Bernardo / Jailer', 'Justin', 'Mancini'],
  ['Francisco / Mariner', 'Nicholas', 'Andrejco'],
  ['Claudia / Dorcas', 'Jackie', 'Wasneski'],
  ['Constanza / Mopsa', 'Brittany', 'Rivera'],
  ['Polixenes', 'Ray', 'Fallon'],
  ['Florizel', 'Steven', 'Munoz'],
  ['Perdita', 'Tara', 'Mershon'],
  ['Curtis', 'John', 'Eldis'],
  ['Colin', 'Michael', 'Krahel'],
  ['Autolycus', 'Ernie', 'Albanesius']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: wt,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'John', 'Erath'],
  ['Director', 'Janet', 'Quartarone'],
  ['Producer', 'Janet', 'Quartarone'],
  ['Assistant Director', 'Curt', 'Foxworth'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Videographer', 'Rich', 'Albe'],
  ['Photographer', 'Rich', 'Kowalski'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Technical Director', 'Dale', 'Simon'],
  ['Scenic Design', 'Dale', 'Simon'],
  ['Lighting Designer', 'Michael', 'Krahel'],
  ['Technical Consultant', 'Rob', 'Rutt'],
  ['Assistant Stage Manager', 'Alysia', 'Toscano'],
  ['Costumes', 'Gini', 'Rose Graydon'],
  ['Set Designer', 'Walt', 'Cupit'],
  ['Dramaturg', 'Patrick', 'Maley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: wt,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

wt.update(has_all_data: 'Y')
