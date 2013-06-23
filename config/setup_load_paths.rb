#../.rvmrc
#rvm default@osn
#rvm rvmrc warning ignore /Users/lemynshij/Sites/adopted/osn/.rvmrc

#if rvm is on
=begin
ENV['MY_RUBY_HOME'] = '/Users/lemynshij/.rvm/rubies/ruby-1.9.3-p194/bin/ruby'
if ENV['MY_RUBY_HOME'] && ENV['MY_RUBY_HOME'].include?('rvm')
  begin
    rvm_path     = File.dirname(File.dirname(ENV['MY_RUBY_HOME']))
    rvm_lib_path = File.join(rvm_path, 'lib')
    $LOAD_PATH.unshift rvm_lib_path
    require 'rvm'
    RVM.use_from_path! File.dirname(File.dirname(__FILE__))
  rescue LoadError
    # RVM is unavailable at this point.
    raise "RVM ruby lib is currently unavailable."
  end
end
 
ENV['BUNDLE_GEMFILE'] = File.expand_path('../Gemfile', File.dirname(__FILE__))
require 'bundler/setup'
=end
