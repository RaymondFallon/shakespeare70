# frozen_string_literal: true

# Initial Bio For Lili Timmes

lili = Member.where(first_name: 'Lili', last_name: 'Timmes')
             .first_or_create!(title: 'Production Staff • Director • Actor • Stage Manager',
                               featured: 'Y',
                               bio: "Lili Timmes is a 2008 graduate of The College of New Jersey, where she studied English and Communication Studies with a concentration in Drama, and a 2011 graduate of Seton Hall University School of Law, where she was a competitor on the Interscholastic Moot Court Board.  She practices law by day and is studying to become a certified yoga instructor.  She first worked with Shakespeare '70 on its 2007 production of \"Private Lives.\"  She married company member Andrew Timmes in 2016.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
