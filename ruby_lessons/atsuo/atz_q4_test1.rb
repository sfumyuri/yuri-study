File.open("result.txt", mode = "w" ){ |result|

  File.open(ARGV[0], mode = "rt" ){ |data|
    data.each_line{|line|
      array = line.chomp.split(',')
      #p array
      if array[0] == 'h2p' then
        hex_str = []
        hex_str[0] = array[1]
        result.write(hex_str.pack('H*'))
        result.write("\n")
      elsif array[0] == 'p2h' then
        result.write(array[1].unpack('H*')[0])
        result.write("\n")
      else
      end
    }
  }
}

