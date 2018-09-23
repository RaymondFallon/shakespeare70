module WelcomeHelper
  def clybourne_page
    production_path(Production.find_by(title: 'Clybourne Park'))
  end
end
