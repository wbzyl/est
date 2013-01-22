class TweetsController < ApplicationController
   respond_to :html, :json

  def index
    @tweets = Tweet.search(params)
    # logger.info "**** #{@tweets.to_curl}"

    respond_with @tweets
  end
end