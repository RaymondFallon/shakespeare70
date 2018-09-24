# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

oa_pac = Venue.find_by(name: 'Open Arts PAC')

s70_bt = BioType.find_by(code: 'S70')

docs_d = Production.where(company: s70,
                          venue: oa_pac,
                          title: "The Doctor's Dilemma",
                          year: 2016).first_or_create!

[ # Cast
  ['Sir Colenso Ridgeon', 'Olivier', 'LeRoux'],
  ['Jennifer Dubedat', 'Mariel', 'Rosati'],
  ['Sir Ralph Bloomfield Bonington', 'George', 'Hartpence'],
  ['Sir Patrick Cullen', 'John', 'Devennie'],
  ['Cutler Walpole', 'Andrew', 'Timmes'],
  ['Dr. Blenkinsop', 'Jack', 'Bathke'],
  ['Louis Dubedat', 'Michael', 'Krahel'],
  ['Minnie/Gallery Secretary', 'Maryalice', 'Rubins-Topoleski'],
  ['Redpenny/Newspaper Man', 'Patrick', 'Rounds'],
  ['Emmie', 'Teresa', 'Welby']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: docs_d,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[
  ['Director', 'Janet', 'Quartarone'],
  ['Stage Manager', 'Blaire', 'Deziel'],
  ['Producer', 'Lili', 'Timmes'],
  ['Costume Consultant', 'Jen', 'Newby'],
  ['Business Manager', 'Tom', 'Curbishley'],
  ['Technical Director', 'John', 'Fischer'],
  ['Technical Advisor', 'Dale', 'Simon']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: docs_d,
                position: Position.find_by(description: casting[0]),
                bio_type: s70_bt).first_or_create!
end

docs_d.update(has_all_data: 'Y')
