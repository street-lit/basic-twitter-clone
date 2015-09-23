class UsersController < ApplicationController

  def index
    render template: 'users/index.html.erb', locals: { users: User.all }
  end

  def show
    render template: 'users/show.html.erb', locals: { user: User.find(params[:id]) }
  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end
end
