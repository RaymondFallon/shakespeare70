Member.where(first_name: 'Morgan', last_name: 'Petronis')
      .first_or_create!.update(title: 'Actor',
                               featured: 'Y',
                               bio: "Morgan Petronis is a 2004 graduate of Temple University, and holds a M.A. in Elementary Education from the College of New Jersey, where she is currently taking graduate courses in Special Education. She has been teaching in New Jersey for over a decade. Morgan made her first appearance with Shakespeare '70 in its 2013 production of <em>The Vortex</em>.")
