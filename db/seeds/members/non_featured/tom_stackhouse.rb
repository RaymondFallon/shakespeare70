
tom = Member.where(first_name: 'Tom', last_name: 'Stackhouse')
            .first_or_create!(title: 'Actor',
                              bio: "Tom acts in the Philadelphia area doing short films, commercials, and videos. He works as a Standardized Patient at a Philadelphia medical school. Tom’s recent musical projects include playing with the Ong’s Hat Band and self-producing <em>Tragedy. Mystery. Hope.</em>  A solo CD of original songs about the history and lore of the NJ Pine Barrens. He sings, plays guitar and mandolin on the album.")