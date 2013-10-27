class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  
  expose(:project)

  def index
  end

  def new
  end

  def show
  end

  def update
  end

  def create
  end

  def destroy
  end
end
