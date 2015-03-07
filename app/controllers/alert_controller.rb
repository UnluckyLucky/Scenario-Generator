class AlertController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:mailchimp_callback]

  def mailchimp_callback
    if params[:mailchimp_password] == ENV['MAILCHIMP_PASSWORD']
      if params[:type] == 'unsubscribe' || params[:type] == 'cleaned'
        @alert = Alert.find_by(email: params[:data][:email])

        if @alert 
          @alert.destroy
        end
      elsif params[:type] == 'upemail'
        @alert = Alert.find_by(email: params[:data][:old_email])

        if @alert 
          @alert.email = params[:data][:new_email]
          @alert.save
        end
      elsif params[:type] == 'subscribe'
        @alert = Alert.create(email: params[:data][:email])
      end
    else
      redirect_to root_url
    end
  end

end
