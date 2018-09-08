# frozen_string_literal: true

# Initial Bio For Amanda McCarther

amanda = Member.where(first_name: 'Amanda', last_name: 'McCarther')
               .first_or_create!(title: 'Actor',
                                 featured: 'Y',
                                 bio: "Amanda McCarther is a 2008 graduate of Mount Union College, now the University of Mount Union, where she studied Theater and Creative Writing. She was a member of both the women's chorus and the Mount Union choir and studied voice privately. She also spent a summer in London studying Theater at London Metropolitan University. In 2014, she spent a summer teaching drama at Mercersburg Academy's ESL+ summer program. Amanda is the ELL Specialist and International Student Advisor at Stuart Country Day School of the Sacred Heart. This summer she will be teaching drama to K-4 students at the StuARTS summer camp at Stuart. Amanda made her first appearance with Shakespeare ‘70 in its 2015 production of Hamlet at the Kelsey Theater.",)
s70 = Company.where(name: "Shakespeare '70").first_or_create!