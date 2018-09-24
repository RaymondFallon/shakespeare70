# frozen_string_literal: true

s70 = Company.find_by(name: "Shakespeare '70")

oa_pac = Venue.find_by(name: 'Open Arts PAC')

s70_bt = BioType.find_by(code: 'S70')

mmf = Production.where(company: s70,
                         venue: oa_pac,
                         title: 'Murder Most Foul: An Evening of Shakespeare',
                         year: 2017).first_or_create!

[ # Cast
  ['Emcee', 'Brittany', 'Rivera'],
  ['Ensemble', 'Ernie', 'Albanesius'],
  ['Ensemble', 'Kayla', 'Elizabeth'],
  ['Ensemble', 'Frank', 'Falisi'],
  ['Ensemble', 'Ray', 'Fallon'],
  ['Ensemble', 'Timothy', 'Kirk'],
  ['Ensemble', 'Michael', 'Krahel'],
  ['Ensemble', 'Amanda', 'McCarther'],
  ['Ensemble', 'Janet', 'Quartarone'],
  ['Ensemble', 'Sarah', 'Stryker']
].each_with_index do |casting, idx|
Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
              production: mmf,
              position: Position.find_by(code: 'A'),
              bio_type: s70_bt).first_or_create!.update(role: casting[0], cast_order: idx)
end

mmf.update(has_all_data: 'Y')
