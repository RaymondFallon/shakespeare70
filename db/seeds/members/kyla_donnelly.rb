# frozen_string_literal: true

# Initial Bio For Kyla Donnelly

kyla = Member.where(first_name: 'Kyla', last_name: 'Mostello Donnelly')
            .first_or_create!(title: 'Actor',
                              featured: 'Y',
                              bio: "KYLA HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
