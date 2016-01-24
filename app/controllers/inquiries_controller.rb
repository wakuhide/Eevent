class InquiriesController < ApplicationController

  def index
    @inquiry = Inquiry.new
  end

  def create
    Inquiry.create(inquiry_params)
  end

  def thanks

    @inquiry = Inquiry.new(params[:inquiry])
    InquiryMailer.received_email(@inquiry).deliver
    binding.pry

    render :action => 'thanks_email'
  end

  def show
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end

end