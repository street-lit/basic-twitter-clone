class TweetsController < ApplicationController

  def index
    render template: 'tweets/index.html.erb', locals: { tweets: Tweet.all }
  end

  def show
    render template: 'tweets/show.html.erb', locals: { tweet: Tweet.find(params[:id]) }
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
