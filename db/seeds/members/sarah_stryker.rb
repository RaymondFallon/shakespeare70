# frozen_string_literal: true

# Initial Bio For Sarah Stryker

sarah = Member.where(first_name: 'Sarah', last_name: 'Stryker')
            .first_or_create!(title: 'Actor • Assistant Director',
                              bio: "SARAH HASN'T WRITTEN A BIO!")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
