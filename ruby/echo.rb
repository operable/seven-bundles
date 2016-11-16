#!/usr/bin/env ruby

argc = ENV["COG_ARGC"].to_i
argv = argc.times.map { |i| ENV["COG_ARGV_#{i}"] }
puts argv.join(" ")
