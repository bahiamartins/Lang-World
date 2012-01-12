class HomeController < ApplicationController
  def index
  end
  
  def save_email
    if !params[:fname].empty?
      ml = MailingList.create(:email => params[:fname])
    end
    redirect_to root_path
  end

end
