class PagesController < ApplicationController
  def home
    @events = Event.all.order(id: "DESC")

  end
end
