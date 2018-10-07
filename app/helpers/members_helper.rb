# frozen_string_literal: true

module MembersHelper
  def casting_credit(casting)
    role_or_job = casting.role || "(#{casting.position.description})"
    content_tag(:em, link_to("#{casting.production.title}:",
                             casting.production,
                             class: 'black no-decoration hover-shadow mr-2')) +
      role_or_job
  end

  def other_credit(casting)
    # casting_credit(casting) + " (#{casting.production.company.name})"
    role_or_job = casting.role || "(#{casting.position.description})"
    content_tag(:em, casting.production.title + ':', class: 'black mr-2') +
      role_or_job +
      other_company_text_or_link(casting)
  end

  private

  def other_company_text_or_link(casting)
    company = casting.production.company
    return content_tag(:strong, " (#{company.name})", class: 'black') unless company.website_url

    link_to(" (#{company.name})", company.website_url, class: 'black no-decoration hover-shadow',
                                                       target: '_blank')
  end
end
