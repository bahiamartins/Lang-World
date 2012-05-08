class NewusersController < ApplicationController
  def new
   @newuser = newuser.new
  end
  
  def create
   @newuser = newuser.new(params[:newuser])
   if @newuser.save
   redirect_to new_user_path
  end 
end
