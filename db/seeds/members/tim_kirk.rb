# frozen_string_literal: true

# Initial Bio For Tim Kirk

tim = Member.where(first_name: 'Timothy', last_name: 'Kirk')
            .first_or_create!(title: 'Actor',
                              featured: 'Y',
                              bio: "TIM HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
