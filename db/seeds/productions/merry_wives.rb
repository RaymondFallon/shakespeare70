# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

kelsey = Venue.find_by(name: 'Kelsey Theatre')

this_s = BioType.find_by(code: 'TS')

merry_wives = Production.where(company: s70,
                               venue: kelsey,
                               title: 'The Merry Wives of Windsor',
                               year: 2018).first_or_create!

[ # Cast
  ['Sir John Falstaff', 'Dale', 'Simon'],
  ['Mistress Margaret Page', 'Kyla', 'Mostello Donnelly'],
  ['Master Page', 'Timothy', 'Kirk'],
  ['Anne Page', 'Charlotte', 'Kirkby'],
  ['William Page', 'Evan', 'Chartock'],
  ['Mistress Alice Ford', 'Brittany', 'Rivera'],
  ['Master Ford', 'Michael', 'Krahel'],
  ['Sir Hugh Evans', 'Patrick', 'Lavery'],
  ['Doctor Caius', 'Olivier', 'LeRoux'],
  ['Mistress Quickly', 'Susan', 'Blair'],
  ['Rugby', 'Christopher', 'Soto'],
  ['Robert Shallow', 'Mort', 'Paterson'],
  ['Abraham Slender', 'Christopher', 'Loos'],
  ['Simple', 'Isabelle', 'Bannon'],
  ['Master Fenton', 'John', 'Fischer'],
  ['Host of the Garter Inn', 'Russ', 'Walsh'],
  ['Robin', 'Fiona', 'Misiura'],
  ['Bardolph', 'Peyton', 'Estabrook'],
  ['Pistol', 'Ernie', 'Albanesius'],
  ['Nym', 'Daniel', 'Altobelli'],
  ['Musician', 'Carolyn', 'Cuesta '],
  ['Musician', 'Maryalice', 'Rubins-Topoleski']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: merry_wives,
                position: Position.find_by(code: 'A'),
                bio_type: this_s).first_or_create!(role: casting[0], cast_order: idx)
  end



[
  ['Director', 'John', 'Erath'],
  ['Assistant Director', 'Janet', 'Quartarone'],
  ['Production Manager', 'Curt', 'Foxworth'],
  ['Lighting Designer', 'Curt', 'Foxworth'],
  ['Stage Manager', 'Lili', 'Timmes'],
  ['Production Designer', 'Dale', 'Simon'],
  ['Sound Designer', 'Andrew', 'Timmes'],
  ['Assistant Stage Manager', 'Samantha', 'Miller'],
  ['Assistant Stage Manager', 'Brenna', 'Herrity'],
  ['Assistant Production Manager', 'Jason', 'Orbe'],
  ['Graphic Design', 'Ernie', 'Albanesius'],
  ['Videographer', 'Rich', 'Albe'],
  ['Photographer', 'Rich', 'Kowalski'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Dramaturg', 'Patrick', 'Maley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: merry_wives,
                position: Position.find_by(description: casting[0]),
                bio_type: this_s).first_or_create!
end

merry_wives.update(has_all_data: 'Y')