# frozen_string_literal: true

# Initial Bio For Janet Quartarone

janet = Member.where(first_name: 'Janet', last_name: 'Quartarone')
            .first_or_create!(exec_committee: 'Y',
                              featured: 'Y',
                              title: 'Actor • Director • Producer',
                              bio: "JANET HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
