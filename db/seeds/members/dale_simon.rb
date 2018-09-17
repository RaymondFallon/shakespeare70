# frozen_string_literal: true

# Initial Bio For Dale Simon

dale = Member.where(first_name: 'Dale', last_name: 'Simon')
             .first_or_create!(title: 'Actor • Technical Director',
                               featured: 'Y',
                               bio: "DALE HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
