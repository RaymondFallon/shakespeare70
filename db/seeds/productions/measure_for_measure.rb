# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Kelsey Theatre')

s70_bt = BioType.find_by(code: 'S70')

m4m = Production.where(company: s70,
                       venue: kelsey,
                       title: 'Measure For Measure',
                       year: 2017).first_or_create!

[ # Cast
  ['Vincentio', 'John', 'Bergeron'],
  ['Angelo', 'Ray', 'Fallon'],
  ['Escalus', 'Christopher', 'Gibbs'],
  ['Claudio', 'John', 'Fischer' ],
  ['Claudio', 'Michael', 'Krahel'],
  ['Lucio', 'Andrew', 'Timmes'],
  ['Provost', 'Scott', 'Karlin'],
  ['Friar Peter', 'Todd', 'Gregoire'],
  ['Elbow', 'Russ', 'Walsh'],
  ['Froth', 'Ernie', 'Albanesius'],
  ['Pompey', 'Timothy', 'Kirk'],
  ['Abhorson', 'Russ', 'Walsh'],
  ['Barnardine', 'Ernie', 'Albanesius'],
  ['Isabella', 'Morgan', 'Petronis'],
  ['Mariana', 'Amanda', 'McCarther'],
  ['Juliet', 'Kelly', 'Colleran'],
  ['Mistress Overdone', 'Kyla', 'Mostello Donnelly'],
  ['Francesca', 'Erin', 'Leder'],
  ['Kate Keepdown / A Punk / Others', 'Jenna', 'Burke']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: m4m,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!(role: casting[0], cast_order: idx)
end



[ # Pro-staff
  ['Director', 'John', 'Erath'],
  ['Assistant Director', 'Janet', 'Quartarone'],
  ['Production Manager', 'Curt', 'Foxworth'],
  ['Assistant Production Manager', 'Jenna', 'Burke'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Assistant Stage Manager', 'Samantha', 'Miller'],
  ['Technical Director', 'Dale', 'Simon'],
  ['Lighting Designer', 'Dale', 'Simon'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Dramaturg', 'Patrick', 'Maley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: m4m,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

m4m.update(has_all_data: 'Y')
