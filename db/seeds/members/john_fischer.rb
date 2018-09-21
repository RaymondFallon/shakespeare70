# frozen_string_literal: true

# Initial Bio For John Fischer

john = Member.where(first_name: 'John', last_name: 'Fischer')
             .first_or_create!(title: 'Actor',
                               featured: 'Y',
                               bio: "JOHN HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
