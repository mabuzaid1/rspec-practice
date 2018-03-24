require 'spec_helper'


include JSONPlaceholder
include ColorizingThings

describe 'Photos validation' do

  before(:example)do
    p_msg 'Create Photo Payload'
    @payloads=PhotosPayloads.new do
      self.albumId=1
      self.id=1
      self.title='accusamus beatae ad facilis cum similique qui sunt'
      self.url='http://placehold.it/600/92c952'
      self.thumbnailUrl='http://placehold.it/150/92c952'
    end
  end
  
  after(:example)do
    p_str "Photos API returned #{@response.code}"
  end

  it 'GET/Photos should return 200' do
    @response=JSONPlaceholder.get('photos',1,:json)
    expect(@response.code).to be(200)
  end

  it 'GET/Photos should return correct value' do
    @response=JSONPlaceholder.get('photos',1,:json)
    expect(@response.body).to eq(@payloads.toJson)
  end

  it'POST/Photos should return 500' do
    @response=JSONPlaceholder.create('photos',@payloads.toJson,:json)
    expect(@response.code).to be(500)
  end

  it'DELETE/Photos should return 200' do
    @response=JSONPlaceholder.delete('photos',101)
    expect(@response.code).to be(404)
  end
end