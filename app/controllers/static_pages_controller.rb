# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def auditions; end

  def black_box_directions; end

  def broken_link; end

  def community; end

  def donations; end

  def welcome; end

  def download_sides
    file = Rails.root.join('app', 'assets', 'documents', 'Antipodes_auditions_sides.pdf')
    File.open(file, 'r') do |f|
      send_data f.read.force_encoding('BINARY'), filename: 'Antipodes_auditions_sides.pdf',
                                                 type: 'application/pdf',
                                                 disposition: 'attachment'
    end
  end

  def dm1
    render :dm1, layout: 'no_header'
  end

  def practice
    file = Rails.root.join('lib', 'scripts', 'antipodes.txt')
    @lines = File.open(file, 'r').to_a
  end

  def view_sides
    file = Rails.root.join('app', 'assets', 'documents', 'Antipodes_auditions_sides.pdf')
    File.open(file, 'r') do |f|
      send_data f.read.force_encoding('BINARY'), filename: 'Antipodes_auditions_sides.pdf',
                                                 type: 'application/pdf'
    end
  end
end
