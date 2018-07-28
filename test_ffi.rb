#!/usr/bin/env ruby
require 'ffi'

module StdLibTester
  extend FFI::Library
  ffi_lib 'c'
  attach_function :puts, [ :string], :int
end

module CustomLibTester
  extend FFI::Library
  ffi_lib './libwrapper.so'
  attach_function :lib_calc, [ :int, :int], :int
end

StdLibTester.puts 'Hello, World with FFI!!!'

puts "ruby: #{CustomLibTester.lib_calc(10, 3)}"
