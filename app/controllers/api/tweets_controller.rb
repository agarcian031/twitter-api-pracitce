class Api::TweetsController < ApplicationController
  def index
    # will go into the twitter_client.rb and then will rub the function home_timeline
    render json: TwitterClient.home_timeline
  end

  def search
    render json: TwitterClient.search(params[:term])
  end

  def tweet
    TwitterClient.tweet(params[:tweet])
    render json: tweet
  end
end
