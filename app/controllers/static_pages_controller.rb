# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def donations; end

  def community; end

  def black_box_directions; end

  def broken_link; end

  def auditions; end

  def welcome
    @clybourne = Production.find_by(title: 'Clybourne Park')
    @macbeth = Production.find_by(title: 'Macbeth')
  end
end
