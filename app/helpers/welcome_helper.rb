# frozen_string_literal: true

module WelcomeHelper
  # def welcome_text_old
  #   content_tag(
  #     :p,
  #     content_tag(:strong, 'Founded in 1970 at TCNJ') +
  #       ", S70 is a theater group operating in central New Jersey
  #       dedicated to producing thoughtful, relevant theater -- both modern and classic.
  #       Every summer, we perform one of our namesake's many works at
  #       the Kelsey Theatre in West Windsor, NJ.  In the fall, we produce a piece from a modern
  #       playwright at one of our other great venues."
  #   )
  # end

  def welcome_text1
    content_tag(
      :p,
      content_tag(:strong, 'Shakespeare 70 and Director Janet Quartarone') +
      " are seeking actors for their production of Annie Baker's ".html_safe +
        content_tag(:i, 'The Antipodes') +
        " to be presented at TCNJ's Black Box March 25 - 29, 2020." +
        content_tag(:br) +
        content_tag(:strong, 'Auditions: ') +
        ' Tuesday & Thursday, Dec. 3rd & 5th, 6 - 9:30 pm in Kendall Hall on the TCNJ campus.' +
        content_tag(:br) +
        content_tag(:strong, 'Seeking:') +
        content_tag(:ul, content_tag(:li, '1 performer who identifies as female, early to late 20s') +
                         content_tag(:li, '1 performer who identifies as male, not caucasian, 30s') +
                         content_tag(:li, '6 performers who identify as male, ages ranging from mid 20s to late 50s')) +
        content_tag(:em, '1 additional role has been precast') +
        content_tag(:br) +
        'Sides and location information to be posted here.' +
        content_tag(:br) +
        'To arrange an audition time, or if you have a question, contact Producer Mike Krahel at ' +
        mail_to('michael.krahel@gmail.com') + '.' +
        link_to('Download Sides', download_sides_path, class: 'btn btn-primary w-100 mt-2')
    )
  end
end
