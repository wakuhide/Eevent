class InquiriesController < ApplicationController

  def index
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.create(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver
    InquiryMailer.thanks_email(@inquiry).deliver

  end

  def thanks
    @inquiry = Inquiry.new(params[:inquiry])
    InquiryMailer.received_email(@inquiry).deliver
    render :action => 'thanks_email'
  end

  def show
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end
end