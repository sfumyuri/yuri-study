require 'optparse'

opt = OptionParser.new

params = []        
opt.on('-h VAL', '--hextoplaintext') { |v| params[0] = v; puts params.pack('H*') }
opt.on('-p VAL', '--plaintexttohex') { |v| puts v.unpack('H*')[0] }

opt.parse(ARGV)
# p ARGV
# p params
# print params.pack('H*')


