class EventsController < ApplicationController

  def index
    @event = Event.last
    @events = Event.order("date DESC").page(params[:page]).per(6)
  end

  def show
    @event = Event.find(params[:id])
  end

  def search
  end

end
