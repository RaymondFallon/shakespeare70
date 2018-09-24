# frozen_string_literal: true

s70 = Company.where(name: "Shakespeare '70").first_or_create!

oa_pac = Venue.find_by(name: 'Open Arts PAC')

s70_bt = BioType.find_by(code: 'S70')

hedda_g = Production.where(company: s70,
                           venue: oa_pac,
                           title: 'Hedda Gabler',
                           year: 2016).first_or_create!

[ # Cast
  ['Hedda Tesman', 'Kayla', 'Elizabeth'],
  ['George Tesman', 'Frank', 'Falisi'],
  ['Julia Tesman', 'Susan', 'Blair'],
  ['Thea Elvsted', 'Heather', 'Duncan'],
  ['Judge Brack', 'Damian', 'Gaeta'],
  ['Eilert Lovbørg', 'Ray', 'Fallon'],
  ['Berta', 'Jackie', 'Wasneski']
].each_with_index do |casting, idx|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: hedda_g,
                position: Position.find_by(code: 'A'),
                bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end



[
  ['Director', 'Michael', 'Krahel'],
  ['Stage Manager', 'Brittany', 'Rivera'],
  ['Assistant Stage Manager', 'Gwyneth', 'Curbishley'],
  ['Producer', 'Curt', 'Foxworth'],
  ['Producer', 'Lili', 'Daniel'],
  ['Scenic Design', 'Alexa', 'Logush'],
  ['Lighting Designer', 'Starrika', 'McCloud'],
  ['Sound Design', 'Stephanie', 'Schoppe'],
  ['Technical Advisor', 'Dale', 'Simon'],
  ['Business Manager', 'Tom', 'Curbishley']
].each do |casting|
  Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                production: hedda_g,
                position: Position.where(description: casting[0]).first_or_create!,
                bio_type: s70_bt).first_or_create!
end

