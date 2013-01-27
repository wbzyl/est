class Tweet
  include Tire::Model::Persistence

  property :text
  property :screen_name
  property :created_at
  property :hashtags
  property :urls
  property :user_mentions

  def self.search(params)
    #Tire.search('tweets', type: 'mongodb', page: params[:page], per_page: 3) do |search|
    Tire.search('tweets', page: params[:page], per_page: 8) do |search|
      per_page = search.options[:per_page]
      current_page = search.options[:page] ? search.options[:page].to_i : 1
      offset = search.options[:per_page] * (current_page - 1)

      search.query do
        boolean do
          #must { string params[:q].blank? ? "*" : params[:q] }
          must { string params[:q] } if params[:q].present?
          must { range :created_at, lte: Time.zone.now }
        end
      end
      search.sort { by :created_at, "desc" }
      search.highlight text: {number_of_fragments: 0}, options: {tag: '<mark>'}

      search.size per_page
      search.from offset
    end
  end

  # These Mongo guys sure do get funky with their IDs in +serializable_hash+, let's fix it.
  # def to_indexed_json
  #   self.to_json
  # end
end