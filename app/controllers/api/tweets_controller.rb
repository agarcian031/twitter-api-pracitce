class Api::TweetsController < ApplicationController
  def index
    # will go into the twitter_client.rb and then will rub the function home_timeline
    render json: TwitterClient.home_timeline
  end
end
