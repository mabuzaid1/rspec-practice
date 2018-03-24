require 'spec_helper'

include JSONPlaceholder
include ColorizingThings


describe 'Posts validation' do
  before(:example) do
    p_msg 'Create Post Payload'
    @payloads=PostPayloads.new do
      self.userId=1
      self.id=1
      self.title='sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
      self.body='quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'
    end
  end
  
  after(:example)do
    p_str "Posts API returned #{@response.code}"
    p_str "Posts API body #{@response.body}"
  end

  it 'GET/posts should return 200' do
    @response=JSONPlaceholder.get('posts',1,:json)
    expect(@response.code).to be(200)
  end

  it 'GET/posts should return correct value' do

    @response=JSONPlaceholder.get('posts',1,:json)
    expect(@response.body).to eq(@payloads.toJson)
  end

  it'POST/Posts should return 500' do

    @response=JSONPlaceholder.create('posts',@payloads.toJson,:json)
    expect(@response.code).to be(500)
  end

  it'PUT/Posts should return 201 for Creation success code' do
    @response=JSONPlaceholder.modify('posts',@payloads.toJson,:json)
    expect(@response.code).to be(201)
  end

  it'DELETE/Posts should return 404' do
    @response=JSONPlaceholder.delete('posts',102)
    expect(@response.code).to be(404)
  end
end