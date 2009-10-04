$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
$:.unshift "#{File.expand_path(File.dirname(__FILE__))}/amf/"

require 'rubygems'
require 'amf/version'
require 'amf/common'

module AMF
  begin
    raise LoadError, 'C extensions not implemented'
  rescue LoadError
    require 'amf/pure'
  end
  require 'amf/class_mapping'

  ClassMapper = AMF::ClassMapping.new
end