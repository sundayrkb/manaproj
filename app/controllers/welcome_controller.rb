class WelcomeController < ApplicationController
  def index
  	@projects = Project.all
  	@users = User.all
  	@user_proj = User.joins(:projects)
  	@teams = Team.all
  	@npc =Project.all.where(status: 'New').count
  	@ipc =Project.all.where(status: 'In progress').count
  	@dpc =Project.all.where(status: 'Done').count
  end
end
