# frozen_string_literal: true

# Initial Bio For Morgan Petronis

morgan = Member.where(first_name: 'Morgan', last_name: 'Petronis')
               .first_or_create!(title: 'Actor',
                                 featured: 'Y',
                                 bio: "MORGAN HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
