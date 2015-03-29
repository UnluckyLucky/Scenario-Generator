class StatController < ApplicationController

  def stat
    Stat.adjust_stat(name: params[:name], count: 1, group: 'AJAX stat')

    respond_to do |format|
      format.json { { success: true } }
    end
  end

end
