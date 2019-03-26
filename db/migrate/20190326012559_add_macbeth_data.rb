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

    cast.each_with_index do |casting, idx|
      Casting.where(member: Member.where(first_name: casting[1],
                                         last_name: casting[2]).first_or_create!,
                    production: macbeth,
                    position: Position.find_by(code: 'A'),
                    bio_type: this_s).first_or_create!(role: casting[0], cast_order: idx)
    end
    crew.each do |casting|
      Casting.where(member: Member.where(first_name: casting[1], last_name: casting[2]).first_or_create!,
                    production: macbeth,
                    position: Position.find_by(description: casting[0]),
                    bio_type: this_s).first_or_create!
    end

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

  def cast
    [
      ['Macbeth', 'Danny', 'Gleason'],
      ['Lady Macbeth', 'Sarah', 'Stryker'],
      ['Macduff', 'John', 'Fischer'],
      ['Lady Macduff', 'Emily', 'Bonaria'],
      ['Banquo', 'Olivier', 'LeRoux'],
      ['Fleance', 'George', 'Lobis'],
      ['Duncan', 'Dale', 'Simon'],
      ['Porter/Siward', 'Christopher', 'Gibbs'],
      ['Malcolm', 'Andrew', 'Timmes'],
      ['Donalbain/Young Siward', 'Zach', 'Michonski'],
      ['Scottish Doctor', 'John', 'Anastasio'],
      ['Ross', 'Michael', 'Krahel'],
      ['Lennox', 'Christopher', 'Loos'],
      ['Angus/First Murderer', 'Timothy', 'Kirk'],
      ['Menteith/Second Murderer', 'Jim', 'Bloss'],
      ['Seyton', 'Russ', 'Walsh'],
      ['Young Macduff', 'Abby', 'Lobis'],
      ['Witch', 'Lorie', 'Baldwin'],
      ['Witch', 'Teyani', 'Carmichael'],
      ['Witch', 'Dara', 'Lewis'],
      ['Gentlewoman', 'Anna', 'Perno']
    ]
  end

  def crew
    [
      ['Director', 'John', 'Erath'],
      # ['Assistant Director', 'Janet', 'Quartarone'],
      # ['Production Manager', 'Curt', 'Foxworth'],
      # ['Stage Manager', 'Lili', 'Timmes'],
      # ['Business Manager', 'Tom', 'Curbishley']
    ]
  end
end
