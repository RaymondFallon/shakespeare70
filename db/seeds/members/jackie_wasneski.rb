# frozen_string_literal: true

# Initial Bio For Jackie Wasneski

jackie = Member.where(first_name: 'Jackie', last_name: 'Wasneski')
               .first_or_create!(title: 'Actor',
                                 featured: 'Y',
                                 bio: "JACKIE HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
