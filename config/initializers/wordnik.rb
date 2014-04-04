Wordnik.configure do |config|
  config.api_key = 'f0b754d401aac7e15231905b986045808b5a4e762a5683785'               # required
  config.username = 'davelooi'                    # optional, but needed for user-related functions
  config.password = 'iloveyou'               # optional, but needed for user-related functions
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new('/dev/null')     # defaults to Rails.logger or Logger.new(STDOUT). Set to Logger.new('/dev/null') to disable logging.
end
