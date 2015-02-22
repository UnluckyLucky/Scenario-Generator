class AlertController < ApplicationController

  def subscribe
    @alert = Alert.new(email: params[:alert][:email], version: current_version_model, signup_page: params[:page_name])

    if email_submission_allowed?
      save_alert
    end

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

  private

    def save_alert
      if @alert.save
        flash[:success] = "#{params[:alert][:email]} successfully saved"
        flash[:error] = nil
        session[:email_submissions] += 1
        session[:last_email_submission_time] = Time.now
      else
        flash[:success] = nil
        flash[:error] = "#{@alert.email} #{@alert.errors[:email][0]}"
      end
    end

    def email_submission_allowed?
      if session[:email_submissions] && session[:last_email_submission_time]

        wait_time = 15.seconds
        last_suggested_time = session[:last_email_submission_time]
        remaining_time = wait_time - (Time.now - last_suggested_time)

        if session[:email_submissions] > 2
          if remaining_time > 0
            flash[:success] = nil
            flash[:error] = "You are submitting emails too fast, please wait #{remaining_time.to_i} seconds"
            return false
          else
            session[:email_submissions] = 0
          end
        end

      else
        session[:email_submissions] = 0
      end

      return true 
    end

end
