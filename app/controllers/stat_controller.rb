class StatController < ApplicationController

  REMOTE_GROUPS = {
    default: 'Misc.',
    a: 'Affiliate link clicks'
  }

  def stat
    puts group_name
    Stat.adjust_stat(name: params[:name], count: 1, group: group_name, version: current_version)

    respond_to do |format|
      format.json { { success: true } }
    end
  end

  private

    def group_name
      if params[:group] && REMOTE_GROUPS.keys.include?(params[:group].to_sym)
        return REMOTE_GROUPS[params[:group].to_sym]
      else
        return REMOTE_GROUPS[:default]
      end
    end

end
