class SuggestionController < ApplicationController

  def submit
    @suggestion = Suggestion.new( suggestion: params[:suggestion][:suggestion],
                                  version: current_version_model,
                                  signup_page: params[:page_name])

    if suggestion_allowed?
      save_suggestion
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private

    def save_suggestion
      if @suggestion.save
        flash[:success] = "Suggestion submitted"
        flash[:error] = nil
        session[:suggestions] += 1
        session[:last_suggestion_time] = Time.now
      else
        flash[:success] = nil
        flash[:error] = "Please enter a suggestion"
      end
    end

    def suggestion_allowed?
      if session[:suggestions]

        wait_time = 15.seconds
        last_suggested_time = session[:last_suggestion_time]
        remaining_time = wait_time - (Time.now - last_suggested_time)

        if session[:suggestions] > 3
          if remaining_time > 0
            flash[:success] = nil
            flash[:error] = "You are submitting suggestions too fast, please wait #{remaining_time.to_i} seconds"
            return false
          else
            session[:suggestions] = 0
          end
        end

      else
        session[:suggestions] = 0
      end

      return true 
    end

end
