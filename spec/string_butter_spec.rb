$:.unshift File.expand_path('../lib', __FILE__)
require 'string_butter'

describe " StringButter" do
  it "initializes to an empty string" do
    sb = StringButter.new
    sb.to_s.should be == ""
  end

  it "initializes with no indentations" do
    sb = StringButter.new
    i = sb.instance_variable_get :@indent
    i.should be == 0
  end

  it "indents" do
    sb = StringButter.new "level one"
    sb.ind("level two, indented")

    print sb
    i = sb.instance_variable_get :@indent
    i.should be == 1
  end

end