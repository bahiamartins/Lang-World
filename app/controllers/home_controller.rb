class HomeController < ApplicationController

  def index
  end

  def save_email
    if !params[:fname].empty?
      ml = MailingList.create(:email => params[:fname])
    end
    flash[:notice] = "Thank you for subscribing Lang World!"
    redirect_to root_path
  end

end