# frozen_string_literal: true

Venue.where(name: 'Kelsey Theatre')
    .first_or_create!(streert_address: '1200 Old Trenton Road',
                      town: 'West Windsor',
                      state: 'NJ',
                      zipcode: '08550',
                      external_url: 'http://www.kelseyatmccc.org/',
                      description: 'The Kelsey theater is a hub of central Jersey theater. [...]')
Venue.where(name: 'Don Evan Black Box Theater')
    .first_or_create!(streert_address: '2000 Pennington Road',
                      town: 'Ewing',
                      state: 'NJ',
                      zipcode: '08628',
                      external_url: 'https://tcnjcenterforthearts.tcnj.edu/venues/don-evans-black-box-theatre/',
                      description: 'Located on the campus of The College of New Jersey (TCNJ), the Don [...]')
Venue.where(name: 'Open Arts PAC')
    .first_or_create!(streert_address: '146 Route 130',
                      suite_address: 'Suite 104',
                      town: 'Bordentown Township',
                      state: 'NJ',
                      zipcode: '08505',
                      external_url: 'https://www.openartspac.org/',
                      description: "Bordentown's Open Arts PAC is one heck of a [...]")
Venue.where(name: 'West Windsor Arts Center')
    .first_or_create!(streert_address: '952 Alexander Road',
                      town: 'Princeton Junction',
                      state: 'NJ',
                      zipcode: '08550',
                      external_url: 'https://westwindsorarts.org/',
                      description: "West Windsor Arts Center is one heck of a [...]")
Venue.where(name: 'The Park')
    .first_or_create!(streert_address: '455 Pennington Road',
                      town: 'Titusville',
                      state: 'NJ',
                      zipcode: '08560',
                      external_url: 'https://www.jerseyfamilyfun.com/washington-crossing-open-air-theatre-childrens-play-schedule/',
                      description: "Back in the day we used to [...]")