class Tool

 @@str = ARGV[0]

 def initialize
  @hex = @@str.to_s(16)
 end

 def seyHEX
  puts "16進文字列は#{@hex}です"
 end

end

tool = Tool.new

tool.sayHEX 
