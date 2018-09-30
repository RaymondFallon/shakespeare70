# frozen_string_literal: true

module BrokenLinkHelper
  def random_page
    if rand(1..3) == 1
      random_production
    else
      random_member
    end
  end

  def random_member
    member = Member.featured.sample
    alt = "Photo of #{member.name}"
    content_tag(:a,
                image_tag(member.photo, class: 'img-fluid', alt: alt),
                href: member_path(member)) +
      content_tag(:label, member.name, class: 'h5 permanent-marker')
  end

  def random_production
    prod = Production.by_s70.has_all_data.sample
    alt = "Poster For #{prod.title}"
    content_tag(:a,
                image_tag(prod.photo, class: 'img-fluid', alt: alt),
                href: production_path(prod)) +
      content_tag(:label, prod.title, class: 'h5 permanent-marker')
  end
end
