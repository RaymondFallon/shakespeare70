# frozen_string_literal: true

# Initial Bio For Andrew Timmes

andy = Member.where(first_name: 'Andrew', last_name: 'Timmes')
             .first_or_create!.update(title: 'Actor • Sound Designer',
                                      featured: 'Y',
                                      bio: "Andrew Timmes is a 2009 graduate of The College of New Jersey, where he was active in All College Theatre and TCNJ Musical Theatre.  He is presently employed by Princeton University as a systems administrator.  Andrew made his first appearance with Shakespeare '70 in <em>A View From The Bridge</em> at TCNJ's Don Evans Black Box Theater in 2009.  He married company member Lili Timmes in 2016.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
