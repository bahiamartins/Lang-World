class HomeController < ApplicationController

  def index
  end

  def save_email
    if !params[:fname].empty?
      ml = MailingList.create(:email => params[:fname])
    end
    flash[:notice] = "Thank you for subscribing Lang World!"
  end
  
  def get_email
    @mailing_list = MailingList.all
    render :xml => @mailing_list
  end
end