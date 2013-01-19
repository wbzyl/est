Est::Application.routes.draw do
  get "tweets/index"

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'tweets#index'
end