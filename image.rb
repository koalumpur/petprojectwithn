class Image
  attr_accessor :type, :size, :name, :url
  
  def initialize(type, size, name, url)
    @type = type
    @size = size
    @name = name
    @url = url
    @sensitive_content = [false, false, true].sample
  end
  
  def file_name(name, type)
    return @name + "." + @type
  end
end

a = Image.new("png", 3, "lolipop", "www.site.com")
puts a.class
puts a.file_name(@name, @type)
  
class Avatar < Image
end
