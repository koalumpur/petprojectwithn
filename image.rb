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
  def initialize(type, size, name, url)
    super
    raise 'Too big Image!' if size > 10_000
    raise "My eyes! My eyes! Please choose an appropriate picture!" if @sensitive_content == true
  end
end

b = Avatar.new("png", 300, "loli", "www.site2.com")
#c = Avatar.new("png", 30000, "pop", "www.site3.com")
#d = Avatar.new("png", 100, "lip", "www.site4.com")

puts b.class#, c.class, d.class
puts b.file_name(@name, @type)#, c.file_name(@name, @type), d.file_name(@name, @type)
