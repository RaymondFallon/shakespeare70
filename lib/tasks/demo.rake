# frozen_string_literal: true

namespace :demo do
  desc 'Create demo data'
  task :recreate do
    return unless Rails.env == 'development'
    p 'Dropping DB...'
    Rake::Task['db:drop'].invoke
    p 'Creating DB...'
    Rake::Task['db:create'].invoke
    p 'Running Migrations...'
    Rake::Task['db:migrate'].invoke
    p 'Seeding Data...'
    Rake::Task['db:seed'].invoke
    p 'Recreate Complete.'
  end
end