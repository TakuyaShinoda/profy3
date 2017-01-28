class GroupsController < ApplicationController

  def show
  	@group = Group.find(params[:id])
  end

  def edit
  end

  def update
  end

end
