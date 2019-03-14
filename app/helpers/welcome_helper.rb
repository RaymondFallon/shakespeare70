# frozen_string_literal: true

module WelcomeHelper
  def welcome_text1
    content_tag(
      :p,
      content_tag(:strong, 'Founded in 1970 at TCNJ') +
        ", S70 is a theater group operating in central New Jersey
        dedicated to producing thoughtful, relevant theater -- both modern and classic.
        Every summer, we perform one of our namesake's many works at
        the Kelsey Theatre in West Windsor, NJ.  In the fall, we produce a piece from a modern
        playwright at one of our other great venues."
    )
  end

  def welcome_text2
    content_tag(
      :p,
      content_tag(:strong, 'In October') +
      ", S70 performed Bruce Norris' Pulitzer Prize and Tony winning drama, ".html_safe +
        content_tag(:i, 'Clybourne Park') +
        ', at an old favorite location: Don Evans Black Box Theater on the campus of TCNJ.'
    )
  end
end
