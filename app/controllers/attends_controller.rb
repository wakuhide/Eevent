class AttendsController < ApplicationController
  def event
    EventUser.create(event_params)
    SendMailToAdmin.hello(current_user.name).deliver
    SendMailToUsers.thanks_email(current_user.email).deliver
  end

  private
  def event_params
    params.permit(:attend_id).merge(user_id: current_user.id)
  end
end
