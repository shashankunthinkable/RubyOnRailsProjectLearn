class PagesController < ApplicationController
  def Home
=begin
    render html: '"/" route => Home Function Executed'
=end
  end

  def About
    render html: '"/about" route => About Function Executed'
  end
end
