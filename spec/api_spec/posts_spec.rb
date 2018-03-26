require 'spec_helper'

include JSONPlaceholder
include ColorizingThings


describe 'Posts validation' do
  before(:example)do
    p_msg 'Create Post Payload'
  end
  after(:example)do
    p_str "Posts API returned #{@response.code}"
    p_str "Posts API body #{@response.body}"
  end

  context 'Get posts'  do

    before(:example) do
      @payloads=PostPayloads.new do
        self.userId=1
        self.id=1
        self.title='sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
        self.body='quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'
      end
    end

    it 'GET/posts should return 200' do
      @response=JSONPlaceholder.get('posts',1,:json)
      expect(@response.code).to be(200)
    end

    it 'GET/posts should return correct value' do

      @response=JSONPlaceholder.get('posts',1,:json)
      expect(@response.body).to eq(@payloads.toJson)
    end
  end

  context 'Create/Delete posts' do

    before(:example) do
      @payloads=PostPayloads.new do
        self.userId=1
        self.id=223
        self.title='sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
        self.body='quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'
      end
      @created_post= JSONPlaceholder.create('posts',@payloads.toJson,:json)
    end

    it'POST/Posts should return 201' do
      @response=@created_post
    expect(@response.code).to be(201)
    end

    it'DELETE/Posts should return' do
      # x=JSON.parse((@created_post).body)[222].to_i
      # puts x
      @response=JSONPlaceholder.delete('posts',JSON.parse((@created_post).body)[223].to_i)
      expect(@response.code).to be(201)
    end
  end
end