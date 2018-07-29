#!/usr/bin/env ruby
require 'ffi'
require 'colorize'

CUSTOM_LIB_FUNS = [
  [:lib_calc, [:int, :int], :int],
  [:lib_calcf, [:float, :float], :float],
  [:lib_get_string, [], :string],
  [:lib_get_lib_string, [], :string]
]

module CustomLibTester
  extend FFI::Library
  ffi_lib './libwrapper.so'

  CUSTOM_LIB_FUNS.each do |sign|
    attach_function *sign
  end
end

puts "Loaded functions:".yellow
CustomLibTester.public_instance_methods.each do |method|
  puts method.to_s.green
end

puts "Test calls:".yellow
puts "calc: #{CustomLibTester.lib_calc(5, 3)}"
puts "calcf: #{CustomLibTester.lib_calcf(5.5, 3.5)}"
puts "string: #{CustomLibTester.lib_get_lib_string()}"
puts "std::string: #{CustomLibTester.lib_get_lib_string()}"

