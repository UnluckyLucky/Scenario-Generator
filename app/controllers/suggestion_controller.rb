class SuggestionController < ApplicationController

  def submit
    @suggestion = Suggestion.new( suggestion: params[:suggestion][:suggestion],
                                  version: current_version_model,
                                  signup_page: params[:page_name])

    @suggestion.save

    flash[:success] = "#{@suggestion.suggestion} submitted"

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

end
