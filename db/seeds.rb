# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s70 = Company.where(name: "Shakespeare '70'").first_or_create!
Company.where(name: 'ActorsNET of Bucks County').first_or_create!
Company.where(name: 'Algonquin Arts').first_or_create!
Company.where(name: 'Circle Players').first_or_create!
Company.where(name: 'Eden Dreams Benefit Gala').first_or_create!
Company.where(name: 'Greenpoint Plays in Brooklyn').first_or_create!
Company.where(name: 'Holmes County Arts Center').first_or_create!
Company.where(name: 'Langhorne Players').first_or_create!
Company.where(name: 'New York Thespis Festival').first_or_create!
Company.where(name: 'Pegasus Theatre').first_or_create!
Company.where(name: 'Pennington Players').first_or_create!
Company.where(name: 'PCM Theater').first_or_create!
Company.where(name: 'PinnWorth Productions').first_or_create!
Company.where(name: 'Playful Theater Productions').first_or_create!
Company.where(name: 'Playhouse 22').first_or_create!
Company.where(name: 'Playmasters Playhouse').first_or_create!
Company.where(name: 'Spotlight Players').first_or_create!
Company.where(name: "TCNJ's All College Theater").first_or_create!
Company.where(name: 'TCNJ Musical Theatre').first_or_create!

Position.where(code: 'A', description: 'Actor').first_or_create!
Position.where(code: 'AD', description: 'Assistant Director').first_or_create!
Position.where(code: 'ASM', description: 'Assistant Stage Manager').first_or_create!
Position.where(code: 'D', description: 'Director').first_or_create!
Position.where(code: 'LD', description: 'Lighting Designer').first_or_create!
Position.where(code: 'P', description: 'Producer').first_or_create!
Position.where(code: 'SM', description: 'Stage Manager').first_or_create!
Position.where(code: 'SnD', description: 'Sound Designer').first_or_create!
Position.where(code: 'SD', description: 'Set Designer').first_or_create!
Position.where(code: 'TD', description: 'Technical Director').first_or_create!

BioType.where(code: 'TS', description: 'This Season').first_or_create!
BioType.where(code: 'S70', description: 'Shakespeare 70').first_or_create!
BioType.where(code: 'OC', description: 'Other Company').first_or_create!
BioType.where(code: 'NF', description: 'Not Featured').first_or_create!

Venue.where(name: 'Kelsey Theatre')
     .first_or_create!(address: "1200 Old Trenton Road,
                                 West Windsor, NJ 08550",
                       zipcode: '08550',
                       external_url: 'http://www.kelseyatmccc.org/',
                       description: 'The Kelsey theater is a hub of central Jersey theater. [...]')
Venue.where(name: 'Don Evan Black Box Theater')
     .first_or_create!(address: "2000 Pennington Road,
                                 Ewing, NJ 08628",
                       zipcode: '08628',
                       external_url: 'https://tcnjcenterforthearts.tcnj.edu/venues/don-evans-black-box-theatre/',
                       description: 'Located on the campus of The College of New Jersey (TCNJ), the Don [...]')
Venue.where(name: 'Open Arts PAC')
     .first_or_create!(address: "146 Route 130,
                                 Suite 104
                                 Bordentown Township, NJ 08505",
                       zipcode: '08505',
                       external_url: 'https://www.openartspac.org/',
                       description: "Bordentown's Open Arts PAC is one heck of a [...]")

Production.where(company: s70, title: 'Clybourne Park', year: 2018).first_or_create!
Production.where(company: s70, title: 'The Merry Wives of Windsor', year: 2018).first_or_create!
Production.where(company: s70, title: 'Hedda Gabler', year: 2016).first_or_create!
Production.where(company: s70, title: 'Murder Most Foul: An Evening of Shakespeare', year: 2017).first_or_create!
Production.where(company: s70, title: 'Measure for Measure', year: 2017).first_or_create!
Production.where(company: s70, title: 'The Heidi Chronicles', year: 2017).first_or_create!
Production.where(company: s70, title: 'Hamlet', year: 2016).first_or_create!
Production.where(company: s70, title: 'The Winter’s Tale', year: 2015).first_or_create!
Production.where(company: s70, title: 'Becky Shaw', year: 2015).first_or_create!
Production.where(company: s70, title: 'Much Ado About Nothing', year: 2014).first_or_create!
Production.where(company: s70, title: 'The Vortex', year: 2013).first_or_create!
Production.where(company: s70, title: 'As You Like It', year: 2013).first_or_create!
Production.where(company: s70, title: 'Antigone', year: 2011).first_or_create!
Production.where(company: s70, title: 'Hay Fever', year: 2005).first_or_create!
Production.where(company: s70, title: 'The Way of the World', year: 2004).first_or_create!
Production.where(company: s70, title: 'Twelfth Night', year: 2004).first_or_create!
Production.where(company: s70, title: "A Midsummer Night's Dream", year: 2002).first_or_create!
Production.where(company: s70, title: "The Doctor's Dilemma", year: 2016).first_or_create!
Production.where(company: s70, title: "A Midsummer Night's Dream", year: 2012).first_or_create!
Production.where(company: s70, title: 'Twelfth Night', year: 2011).first_or_create!
Production.where(company: s70, title: 'The Tempest', year: 2010).first_or_create!
Production.where(company: s70, title: 'The Importance of Being Earnest', year: 2010).first_or_create!
Production.where(company: s70, title: 'A View from the Bridge', year: 2009).first_or_create!
Production.where(company: s70, title: 'Romeo and Juliet', year: 2009).first_or_create!
Production.where(company: s70, title: 'The Skin of Our Teeth', year: 2008).first_or_create!
Production.where(company: s70, title: 'Circle Mirror Transformation', year: 2014).first_or_create!
Production.where(company: s70, title: 'God of Carnage', year: 2012).first_or_create!
Production.where(company: s70, title: 'The Taming of the Shrew', year: 2008).first_or_create!
Production.where(company: s70, title: 'The Constant Wife', year: 2008).first_or_create!
Production.where(company: s70, title: 'The Glass Menagerie', year: 2007).first_or_create!
Production.where(company: s70, title: 'The Merchant of Venice', year: 2007).first_or_create!
Production.where(company: s70, title: 'Private Lives', year: 2007).first_or_create!





Member.where(name: 'Amanda McCarther')
      .first_or_create!(title: 'Actor',
                        photo_url: '',
                        bio: "Amanda McCarther is a 2008 graduate of Mount Union College, now the University of Mount Union, where she studied Theater and Creative Writing. She was a member of both the women's chorus and the Mount Union choir and studied voice privately. She also spent a summer in London studying Theater at London Metropolitan University. In 2014, she spent a summer teaching drama at Mercersburg Academy's ESL+ summer program. Amanda is the ELL Specialist and International Student Advisor at Stuart Country Day School of the Sacred Heart. This summer she will be teaching drama to K-4 students at the StuARTS summer camp at Stuart. Amanda made her first appearance with Shakespeare ‘70 in its 2015 production of Hamlet at the Kelsey Theater.",)

Member.where(name: 'Jake Burbage')
      .first_or_create!(title: 'Actor • Director',
                        photo_url: 'https://yt3.ggpht.com/a-/ACSszfE94huZs48otiSDNm2yafYZbu06ephpiBN0rw=s900-mo-c-c0xffffffff-rj-k-no',
                        bio: "Jake has been acting for the last 20 years on both the stage and screen. As a child, he starred in the television sitcom \"Grounded For Life\" from 2000-2004, and voiced the role of Benny the Bull on Nickelodeon's \"Dora the Explorer\".  Jake currently acts on and writes for the Amazon web series \"Nuke City\", and will soon be seen co-anchoring a new political talk show satire entitled \"Fake News Nightly,\" premiering in 2019. He is a member of SAG-AFTRA and Actors Equity. He made his first appearance with Shakespeare '70 in their 2014 summer production of Much Ado About Nothing.")