# frozen_string_literal: true

# Initial Bio For Brittany Rivera

brit = Member.where(first_name: 'Brittany', last_name: 'Rivera')
             .first_or_create!(title: 'Actor • Director • Producer',
                               featured: 'Y',
                               bio: "JANET HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
