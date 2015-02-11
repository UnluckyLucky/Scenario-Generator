class AlertController < ApplicationController

  def subscribe
    @alert = Alert.new(email: params[:alert][:email])

    @alert.save

    flash[:success] = "#{params[:alert][:email]} successfully subscribed"

    redirect_to :back
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
