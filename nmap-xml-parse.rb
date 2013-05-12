#!/usr/bin/env ruby

require 'rubygems'
require 'nokogiri'

if ARGV[0] == nil
  raise "please provide a file to parse"
end

myfile = Nokogiri::XML(open(ARGV[0]))

myfile.search("host").each do |host|
  if host.search("script").empty? != true
   host.display
  end
end


