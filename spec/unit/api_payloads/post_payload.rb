class PostPayloads
  attr_accessor :userId, :id, :title, :body

  def initialize(&block)
    instance_eval &block if block_given?
  end

  def toJson
    return "{
  \"userId\": #{userId},
  \"id\": #{id},
  \"title\": \"#{title}\",
  \"body\": \"#{body}\"
}"
  end
end