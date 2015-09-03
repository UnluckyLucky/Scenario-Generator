class StaticController < ApplicationController

  def faq
    @title = 'Scenario Generator FAQ'
    Stat.adjust_stat(name: "FAQ visitors", count: 1, group: 'Visitor Counts', version: current_version)
  end

  def get
    # If we're sent a url
    #   and the site being sent to is gmg
    #     redirect via commision junction to the buy link
    #   and the site being sent to is not gmg
    #     and this is the header link (it is a specific gmg ad)
    #       redirect_to gmg
    #   and the site being sent to is not gmg
    #      and this is not the header link
    #        redirect_to the url we were sent
    # If we're not sent a url
    #   redirect_to gmg
    if params[:url]
      if params[:site] == 'gmg'
        redirect_to URI.escape("#{ENV['GMG_LINK']}?url=#{params[:url]}")
      elsif params[:location] == 'header'
        redirect_to ENV['GMG_LINK']
      else
        redirect_to params[:url]
      end
    else
      redirect_to ENV['GMG_LINK']
    end
  end

end
