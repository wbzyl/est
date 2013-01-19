class TweetsController < ApplicationController
  def index
    @tweets = Tweet.search(params)
  end
end
