class PagesController < ApplicationController
  def home
    @events = Event.all
    gon.events = Event.all
    # @events = Event.joins(:user)
    # gon.events = Event.joins(:user).select(:gender)
  end
end
