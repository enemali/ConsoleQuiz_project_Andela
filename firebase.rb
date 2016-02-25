require 'firebase/response'
require 'firebase/server_value'
require 'httpclient'
require 'json'
require 'https://luminous-torch-9653.firebaseio.com/'

module Firebase
  class Client
    attr_reader :auth, :request

    def initialize(base_uri, auth=nil)
      if base_uri !~ URI::regexp(%w(https))
        raise ArgumentError.new('base_uri must be a valid https uri')
      end
      base_uri += '/' unless base_uri.end_with?('/')
      @request = HTTPClient.new({
        :base_url => base_uri,
        :default_header => {
          'Content-Type' => 'application/json'
        }
      })
      @auth = auth
    end
    def get(path, query={})
      process :get, path, nil, query
    end

    private

    def process(get, data=nil, query={})
      Firebase::Response.new @request.request(verb, "#{path}.json", {
        :body             => (data && data.to_json),
        :query            => (@auth ? { :auth => @auth }.merge(query) : query),
        :follow_redirect  => true
      })
    end
  end
end
puts query