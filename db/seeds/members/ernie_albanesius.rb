# frozen_string_literal: true

# Initial Bio For Ernie Albanesius

ernie = Member.where(first_name: 'Ernie', last_name: 'Albanesius')
           .first_or_create!(title: 'Actor',
                             featured: 'Y',
                             bio: "ERNIE HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
