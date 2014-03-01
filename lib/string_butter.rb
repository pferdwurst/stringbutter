module StringButter
  
  LIBRARY_PATH = File.join(File.dirname(__FILE__), 'string_butter')
  
  def self.new(str = "")
    Inside.new(str)
  end

  ##
  # Require StringButter base files
  %w{
  inside
  version
  }.each {|lib| require File.join(LIBRARY_PATH, lib) }

end
