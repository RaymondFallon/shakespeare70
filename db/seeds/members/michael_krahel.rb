# frozen_string_literal: true

# Initial Bio For Janet Quartarone

mike = Member.where(first_name: 'Janet', last_name: 'Quartarone')
             .first_or_create!(exec_committee: 'Y',
                               title: 'Actor • Production Staff • Director',
                               bio: "Michael Krahel graduated from The College of New Jersey in 2009. He currently works as an administrative analyst for the New Jersey Department of Environmental Protection.  Mike made his first appearance with Shakespeare ‘70 in its 2008 production of \"The Skin of Our Teeth\" at TCNJ’s Kendall Main Stage.")
s70 = Company.where(name: "Shakespeare '70").first_or_create!
