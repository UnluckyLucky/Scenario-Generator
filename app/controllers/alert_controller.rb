class AlertController < ApplicationController

  def subscribe
    @alert = Alert.new(email: params[:alert][:email], version: current_version_model, signup_page: params[:page_name])

    @alert.save

    flash[:success] = "#{params[:alert][:email]} successfully subscribed"

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def emails
  end

  def unsubscribe
    @alert = Alert.find_by(email: params[:alert][:email])

    if @alert 
      @alert.destroy
    end

    flash[:error] = "#{params[:alert][:email]} successfully removed"
    redirect_to alert_emails_path
  end

end
