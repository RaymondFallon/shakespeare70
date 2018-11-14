# frozen_string_literal: true

module CommunityHelper
  def eden_text_1
    content_tag(:p, content_tag(:strong, 'Eden Dreams') +
      ' is a key fundraising event for ' +
      link_to('Eden Autism Services', 'https://edenautism.org/') +
      '.  As part of our ongoing commitment to service and outreach in the community, '\
      "Shakespeare '70 is proud of our work at the Eden Dreams Gala.  "\
      'Every January for more than a decade now, actors from S70 have volunteered their talents to this event.')
  end

  def eden_text_2
    content_tag(:p, 'Headquartered in Princeton, NJ, '.html_safe +
      content_tag(:strong, 'Eden Autism Services') +
      ' serves and supports people with autism '\
      "— and their families — throughout their lifetimes; Eden now has over 40 years of service in the area "\
      "and beyond.  They offer a twelve-month school program for 3 to 21 year olds, vocational training "\
      "for adolescents and adults, residential services for adults, and numerous other resources for "\
      "autistic children and adults and their families.")
  end

  def eden_text_3
    content_tag(:p, 'With each year focused on a different theme, actors in costume mingle and interact '\
      'improvisationally with guests, and provide the bits of information guests need to solve the '.html_safe +
      content_tag(:strong, 'Dream Search puzzle') +
      '– one of many activities presented that evening.  The Dream Search and its actors are an element '\
      'unique to Eden Dreams.')
  end
end
