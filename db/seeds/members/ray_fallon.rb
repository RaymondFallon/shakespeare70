# frozen_string_literal: true

# Initial Bio For Ray Fallon

ray = Member.where(first_name: 'Ray', last_name: 'Fallon')
            .first_or_create!(exec_committee: 'Y',
                              title: 'Actor • Webmaster • Producer',
                              bio: "RAY HASN'T WRITTEN A BIO! But that's OK.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
