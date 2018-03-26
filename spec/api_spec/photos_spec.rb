require 'spec_helper'


include JSONPlaceholder
include ColorizingThings

describe 'Photos validation' do

  before(:example)do
    p_msg 'Create Photos Payload'
  end

  after(:example)do
    p_str "Photos API returned #{@response.code}"
    p_str "Photos API body #{@response.body}"
  end

  context 'Get Photos'  do
    before(:example)do
      @payloads=PhotosPayloads.new do
        self.albumId=1
        self.id=1
        self.title='accusamus beatae ad facilis cum similique qui sunt'
        self.url='http://placehold.it/600/92c952'
        self.thumbnailUrl='http://placehold.it/150/92c952'
      end
    end

    it 'GET/Photos should return 200' do
      @response=JSONPlaceholder.get('photos',1, :json)
      expect(@response.code).to be(200)
    end

    it 'GET/Photos should return correct value' do
      @response=JSONPlaceholder.get('photos', 1, :json)
      expect(@response.body).to eq(@payloads.toJson)
    end
  end


  context 'Create/Delete Photos' do

    before(:example) do
      @payloads=PhotosPayloads.new do
        self.albumId=1
        self.id=223
        self.title='accusamus beatae ad facilis cum similique qui sunt'
        self.url='http://placehold.it/600/92c952'
        self.thumbnailUrl='http://placehold.it/150/92c952'
      end
      @created_response= JSONPlaceholder.create('photos',@payloads.toJson,:json)

    end

    it'POST/Photos should return 201' do
      @response=@created_response
      expect(@response.code).to be(201)
    end

    it'DELETE/Posts should return 404' do
      @response=JSONPlaceholder.delete('photos',JSON.parse((@created_response).body)[222].to_i)
      expect(@response.code).to be(201)
    end
  end
end