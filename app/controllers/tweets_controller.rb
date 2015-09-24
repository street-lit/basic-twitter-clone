class TweetsController < ApplicationController

  def index
    page = (params[:page] || 0).to_i
    tweets = Tweet.limit(10).offset(page * 10)
    render template: 'tweets/index.html.erb', locals: { tweets: tweets, page: page}
  end

  def show
    render template: 'tweets/show.html.erb', locals: { tweet: Tweet.find(params[:id]) }
  end

  def new

  end

  def create
    user = User.find(params[:id])
    tweet = Tweet.new
    tweet.user_id = user.id
    tweet.message = Tweet.fetch(:tweet).fetch(:message)
    if tweet.save
      redirect_to
    else
    end
  end

  def update

  end

  def destroy

  end
end




















