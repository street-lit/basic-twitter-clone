class TweetsController < ApplicationController

  def index
    page = (params[:page] || 0).to_i
    tweets = Tweet.limit(10).offset(page * 10)
    render locals: { tweets: tweets, page: page }
  end

  def show
    render template: 'tweets/show.html.erb', locals: { tweet: Tweet.find(params[:id]) }
  end

  def new
    user_options = User.order(name: :asc).map { |u| [u.name, u.id] }
    render locals: {
      tweet: Tweet.new,
      user_options: user_options
    }
  end

  def create
    tweet = Tweet.new
    tweet.message = params.fetch(:tweet).fetch(:message)
    tweet.user_id = params.fetch(:tweet).fetch(:user_id)
    tweet.save
  end

  def update

  end

  def destroy

  end
end




















