# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def donations; end

  def community; end

  def black_box_directions; end

  def broken_link; end

  def auditions; end

  def welcome
    @richard = Production.find_by(title: 'Richard III')
  end
end
