# frozen_string_literal: true

Venue.where(name: 'Kelsey Theatre')
    .first_or_create!(address: "1200 Old Trenton Road,
                                 West Windsor, NJ 08550",
                      zipcode: '08550',
                      external_url: 'http://www.kelseyatmccc.org/',
                      description: 'The Kelsey theater is a hub of central Jersey theater. [...]')
Venue.where(name: 'Don Evan Black Box Theater')
    .first_or_create!(address: "2000 Pennington Road,
                                 Ewing, NJ 08628",
                      zipcode: '08628',
                      external_url: 'https://tcnjcenterforthearts.tcnj.edu/venues/don-evans-black-box-theatre/',
                      description: 'Located on the campus of The College of New Jersey (TCNJ), the Don [...]')
Venue.where(name: 'Open Arts PAC')
    .first_or_create!(address: "146 Route 130,
                                 Suite 104
                                 Bordentown Township, NJ 08505",
                      zipcode: '08505',
                      external_url: 'https://www.openartspac.org/',
                      description: "Bordentown's Open Arts PAC is one heck of a [...]")
Venue.where(name: 'West Windsor Arts Center')
    .first_or_create!(address: "952 Alexander Road
                                Princeton Junction, NJ 08550",
                      zipcode: '08550',
                      external_url: 'https://westwindsorarts.org/',
                      description: "West Windsor Arts Center is one heck of a [...]")
Venue.where(name: 'The Park')
    .first_or_create!(address: "455 Pennington Road
                                Titusville, NJ 08560",
                      zipcode: '08560',
                      external_url: 'https://www.jerseyfamilyfun.com/washington-crossing-open-air-theatre-childrens-play-schedule/',
                      description: "Back in the day we used to [...]")