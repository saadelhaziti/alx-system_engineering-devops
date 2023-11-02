#!/usr/bin/env ruby
sender = ARGV[0].scan(/(?<=from:)\s*([^\]]*?)(?=\])/)
receiver = ARGV[0].scan(/(?<=to:)\s*([^\]]*?)(?=\])/)
flags = ARGV[0].scan(/(?<=flags:)\s*([^\]]*?)(?=\])/)
puts "#{sender.join},#{receiver.join},#{flags.join}"
