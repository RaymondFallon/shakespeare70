# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Kelsey Theatre')

s70_bt = BioType.find_by(code: 'S70')

ayli = Production.where(company: s70,
                        venue: kelsey,
                        title: 'As You Like It',
                        year: 2013).first_or_create!

[ # Cast
  ['Duke Senior', 'Dale', 'Simon'],
  ['Duchess Frederika', 'Kathy', 'Garofano'],
  ['Le Beau', 'Jim', 'Bloss'],
  ['Rosalind', 'Emily', 'West'],
  ['Amiens', 'Andrew', 'Timmes'],
  ['Celia', 'Heather', 'Duncan'],
  ['Oliver', 'Patrick', 'Albanesius'],
  ['Touchstone', 'Dan', 'Loverro'],
  ['Jaques', 'Curt', 'Foxworth'],
  ['Audrey', 'Hannah', 'Adamy'],
  ['Denise', 'Reagan', 'Frankhouser'],
  ['Orlando', 'Ray', 'Fallon'],
  ['Adam', 'John', 'Anastasio'],
  ['Charles/Jaques de Bois', 'Ernie', 'Albanesius'],
  ['William', 'Garrett', 'Verdone'],
  ['Silvius', 'Mike', 'Krahel'],
  ['Corin', 'Fred', 'Bartlett'],
  ['Phoebe', 'Jess', 'Noll'],
  ['Phoebe', 'Maddie', 'Patrick'],
  ['Sir Oliver Martext/Hymen', 'John', 'Cherney']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: ayli,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'John', 'Erath'],
  ['Assistant Director', 'Janet', 'Quartarone'],
  ['Producer', 'John', 'Erath'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Directing Intern', 'Garrett', 'Verdone']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: ayli,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

# ayli.update(has_all_data: 'Y')
