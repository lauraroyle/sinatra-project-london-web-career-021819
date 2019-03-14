require 'bundler/setup'
# require_relative 'api_key'

Bundler.require

require_all('app/')

set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}

require 'yelp/fusion'

# configuration = Yelp::Fusion.client.configure do |config|
#   config.api_key = API_KEY
# end
