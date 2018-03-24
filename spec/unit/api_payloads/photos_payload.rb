class PhotosPayloads
  attr_accessor :albumId, :id, :title, :url, :thumbnailUrl

  def initialize(&block)
    instance_eval &block if block_given?
  end

  def toJson
    return "{
  \"albumId\": #{albumId},
  \"id\": #{id},
  \"title\": \"#{title}\",
  \"url\": \"#{url}\",
  \"thumbnailUrl\": \"#{thumbnailUrl}\"
}"
  end
end