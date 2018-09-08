# frozen_string_literal: true

# Initial Bio For Andrew Timmes

andy = Member.where(first_name: 'Andrew', last_name: 'Timmes')
             .first_or_create!(title: 'Actor • Sound Designer',
                               bio: "ANDREW HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
