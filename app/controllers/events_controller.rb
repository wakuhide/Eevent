class EventsController < ApplicationController

  def index
    @event = Event.last
    @events = Event.order("date DESC").page(params[:page]).per(6)
  end

  def show
    @event = Event.find(params[:id])
  end

  def detail
    @event = Event.find(params[:event_id])
  end

  def search
  end

  def create
  end

  def send_mail
    @message = params[:message]
    logger.debug @message
    SendMailToAdmin.hello('current_user.name').deliver
    SendMailToUsers.thanks_email('current_user.email').deliver
    redirect_to root_path
  end


end
