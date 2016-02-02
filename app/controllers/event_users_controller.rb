class EventUsersController < ApplicationController

  def index
  end

  def create
    Event.create(event_params)
  end

  def show
  end

  def new
    # ほんとはこうしたい
    EventUser.create(event_params)
    # edited = event_params
    # EventUser.create(event_id: params[:id], user_id: edited[:user_id])

    SendMailToAdmin.hello(current_user.name).deliver
    SendMailToUsers.thanks_email(current_user.email).deliver
  end

  private
  def event_params
    params.permit(:event_id).merge(user_id: current_user.id)
  end


end
