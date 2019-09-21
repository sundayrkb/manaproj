class WelcomeController < ApplicationController
  def index
  	@projects = Project.all
  	@users = User.all
  	@teams = Team.all
  	@npc =Project.all.where(status: 'New').count
  	@ipc =Project.all.where(status: 'In progress').count
  	@dpc =Project.all.where(status: 'Done').count
  	@sgp=User.joins(:projects).group(:status).count
  end
end
