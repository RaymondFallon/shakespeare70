# frozen_string_literal: true

# Initial Bio For Curt Foxworth

curt = Member.where(first_name: 'Curt', last_name: 'Foxworth')
             .first_or_create!(exec_committee: 'Y',
                               title: 'Director • Actor • Production Staff',
                               bio: "Curt Foxworth is a 2002 graduate of The College of New Jersey.  He studied improvisation at IO Theater in Chicago.  He is a member of SAG-AFTRA and currently teaches theater at Monmouth University.  Curt made his first appearance with Shakespeare ‘70 in its 2002 production of \"A Midsummer Night’s Dream\" at Washington Crossing State Park.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
