class AlertController < ApplicationController

  def subscribe
    @alert = Alert.new(email: params[:alert][:email])

    if @alert.save
      flash[:notice] = "#{params[:email]} successfully subscribed"
    else
      flash[:notice] = @alert.errors.full_messages
    end

    redirect_to :back
  end

  def unsubscribe
    @alert = Alert.find_by(email: params[:email])

    @alert.destroy

    redirect_to :back
  end

end
