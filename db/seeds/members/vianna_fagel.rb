# frozen_string_literal: true

# Initial Bio For Vianna Fagel

vianna = Member.where(first_name: 'Vianna', last_name: 'Fagel')
            .first_or_create!(title: 'Actor • Production Staff',
                              bio: "Vianna Fagel is a 2013 graduate of The College of New Jersey where she studied Statistics with minors in Music and Religion. She currently works in Analytics at Horizon Blue Cross Blue Shield of NJ. Vianna made her first appearance with Shakespeare ‘70  in its 2014 production of \"Much Ado About Nothing\" at the Kelsey Theater. ")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
