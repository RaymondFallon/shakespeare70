# frozen_string_literal: true

s70 = Company.where(name: "Shakespeare '70").first_or_create!

kelsey = Venue.find_by(name: 'Kelsey Theatre')
oa_pac = Venue.find_by(name: 'Open Arts PAC')
don_bb = Venue.find_by(name: 'Don Evans Black Box Theater')
ww_art = Venue.find_by(name: 'West Windsor Arts Center')
w_park = Venue.find_by(name: 'The Park')

Production.where(company: s70, venue: don_bb, title: 'Clybourne Park', year: 2018).first_or_create!(
  start_date: '18/10/2018'.to_date,
  end_date: '21/10/2018'.to_date,
  has_all_data: 'Y',
  schedule_desc: 'Thursday-Saturday at 8pm, Sunday at 2pm',
  description: "<em>Clybourne Park</em> is inspired by the events in Lorraine Hansberry's landmark drama, <em>A Raisin in the Sun</em>.  Playwright Bruce Norris explores ideas of community, race relations, culture, and language in an incisively funny and deeply moving play that won the 2011 Pulitzer Prize for Drama and the 2012 Tony Award for Best Play.
</br>•</br>
In Act One, it's 1959 and a white family is leaving Clybourne Park and selling their home to a black family, much to the ire of their neighbors.
</br>•</br>
In Act Two, it's 2009 and a white yuppie couple has purchased the same home in Clybourne Park, now a predominantly minority neighborhood.  The existing neighborhood association fights to protect the identity of Clybourne Park from gentrification.
</br>•</br>
Norris' work challenges its audience to question the nature and quality of social progress in the fifty years since Hansberry's seminal work first took the stage."
)

Production.where(company: s70, venue: kelsey, title: 'The Merry Wives of Windsor', year: 2018).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'Measure For Measure', year: 2017).first_or_create!
Production.where(company: s70, venue: oa_pac, title: 'Murder Most Foul: An Evening of Shakespeare', year: 2017).first_or_create!
Production.where(company: s70, venue: oa_pac, title: 'The Heidi Chronicles', year: 2017).first_or_create!
Production.where(company: s70, venue: oa_pac, title: 'Hedda Gabler', year: 2016).first_or_create!
Production.where(company: s70, venue: oa_pac, title: "The Doctor's Dilemma", year: 2016).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'Hamlet', year: 2016).first_or_create!
Production.where(company: s70, venue: kelsey, title: "The Winter's Tale", year: 2015).first_or_create!
Production.where(company: s70, venue: oa_pac, title: 'Becky Shaw', year: 2015).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'Much Ado About Nothing', year: 2014).first_or_create!
Production.where(company: s70, venue: ww_art, title: 'Circle Mirror Transformation', year: 2014).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'As You Like It', year: 2013).first_or_create!
Production.where(company: s70, venue: ww_art, title: 'The Vortex', year: 2013).first_or_create!
Production.where(company: s70, venue: kelsey, title: "A Midsummer Night's Dream", year: 2012).first_or_create!
Production.where(company: s70, venue: ww_art, title: 'God of Carnage', year: 2012).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'Twelfth Night', year: 2011).first_or_create!
Production.where(company: s70, venue: ww_art, title: 'Antigone', year: 2011).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'The Tempest', year: 2010).first_or_create!
Production.where(company: s70, venue: don_bb, title: 'The Importance of Being Earnest', year: 2010).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'Romeo and Juliet', year: 2009).first_or_create!
Production.where(company: s70, venue: don_bb, title: 'A View from the Bridge', year: 2009).first_or_create!
Production.where(company: s70, title: 'The Skin of Our Teeth', year: 2008).first_or_create!
Production.where(company: s70, title: 'The Taming of the Shrew', year: 2008).first_or_create!
Production.where(company: s70, title: 'The Constant Wife', year: 2008).first_or_create!
Production.where(company: s70, venue: kelsey, title: 'The Merchant of Venice', year: 2007).first_or_create!
Production.where(company: s70, title: 'The Glass Menagerie', year: 2007).first_or_create!
Production.where(company: s70, title: 'Private Lives', year: 2007).first_or_create!
Production.where(company: s70, title: 'Hay Fever', year: 2005).first_or_create!
Production.where(company: s70, title: 'The Way of the World', year: 2004).first_or_create!
# Production.where(company: s70, venue: w_park, title: 'Twelfth Night', year: 2004).first_or_create!
# Production.where(company: s70, venue: w_park, title: "A Midsummer Night's Dream", year: 2002).first_or_create!
