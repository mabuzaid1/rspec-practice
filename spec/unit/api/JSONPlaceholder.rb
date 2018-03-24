require 'rest-client'
require 'spec_helper'

module JSONPlaceholder

  def get(resource,id,accept)
    begin
    return RestClient.get "https://jsonplaceholder.typicode.com/#{resource.to_s}/#{id.to_s}",:accept=>accept
  rescue => e
    return e.to_s
    end
  end

  def create(resource,payload, content_type)
    begin
      return RestClient.post "https://jsonplaceholder.typicode.com/#{resource.to_s}/", payload, :accept => :json, :content_type => content_type
    rescue => e
      return e.response
    end
  end

  def modify(resource,payload, content_type)
    begin
      return RestClient.put "https://jsonplaceholder.typicode.com/#{resource.to_s}/", payload, :accept => :json, :content_type => content_type
    rescue => e
      return e.response
    end
  end

  def delete(resource,id)
    begin
      return RestClient.delete "https://jsonplaceholder.typicode.com/#{resource.to_s}/+#{id.to_s}", :accept => :json
    rescue => e
      return e.response
    end
  end

end