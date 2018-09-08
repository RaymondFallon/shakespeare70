# frozen_string_literal: true

# Initial Bio For Frank Falisi

frank = Member.where(first_name: 'Frank', last_name: 'Falisi')
            .first_or_create!(exec_committee: 'Y',
                              title: 'Actor • Assistant Director • Production Staff',
                              bio: "Frank graduated from Rutgers University in 2014 with a major in English and minor in Cinema Studies. He currently teaches theater and improvisation at Algonquin Arts Theatre in Manasquan. Frank is also a staff writer at Tiny Mix Tapes, where he writes about music, popular culture, and Mamma Mia! Here We Go Again.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
