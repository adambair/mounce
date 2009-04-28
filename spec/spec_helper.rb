$LOAD_PATH.unshift(File.join(File.dirname(File.dirname(__FILE__)),'lib'))
begin; require 'rubygems'; rescue LoadError; end
require 'spec'
require 'mounce'
 
Spec::Runner.configure do |config|
end

