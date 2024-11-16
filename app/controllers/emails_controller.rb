class EmailsController < ApplicationController
  before_action :authenticate_user!

  def new
    @emails = Email.all()
    @email = Email.new()
  end

  def create
    email = Email.new(email_params)
    email.save
    redirect_to root_path
  end

  private
  def email_params
    params.require(:email).permit(:content)
  end
end
