class AddMacbethData < ActiveRecord::Migration[5.1]
  def up
    declare_new_season
    s70 = Company.find_by(name: "Shakespeare '70")
    kelsey = Venue.find_by(name: 'Kelsey Theatre')
    this_s = BioType.find_by(code: 'TS')
    macbeth = Production.where(company: s70,
                               venue: kelsey,
                               title: 'Macbeth',
                               year: 2019).first_or_create!
  end

  def down; end

  private

  def declare_new_season
    clybourne = Production.find_by(title: 'Clybourne Park')
    merry_wives = Production.find_by(title: 'The Merry Wives of Windsor')
    this_s = BioType.find_by(code: 'TS')
    s70 = BioType.find_by(code: 'S70')

    clybourne.castings.where(bio_type: this_s).update(bio_type: s70)
    merry_wives.castings.where(bio_type: this_s).update(bio_type: s70)
  end
end
