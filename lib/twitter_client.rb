class TwitterClient

  def self.home_timeline 
    client.home_timeline
  end  

  def self.tweet(message)
    client.update(message)
  end 

  def self.search(term)
    tweets = []
    client.search("from:#{term}").each do |tweet|
      # if a tweet doesn't have a user, it'll break out of the loop 
      user = tweet.user || break
      tweets << {
        id: tweet.id,
        text: tweet.text,
        user: {
          screen_name: user.screen_name,
          name: user.name,
          profile_image_url: user.profile_image_url.to_s,
          url: user.url
        }
      }
    end
    tweets
  end

  private 
    def self.client
      # where we will use the twitter gem to get access to twitter 
      # the line below will create a new client and will validate the twitter client that is being passed in. 
      Twitter::REST::Client.new do |config|
        config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
        config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
        config.access_token = ENV['TWITTER_ACCESS_TOKEN']
        config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
      end 
    end 

    
end 