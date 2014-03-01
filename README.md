# Stringbutter

   StringBuilder for Ruby with easy ASCII formatting.

## Installation

Add this line to your application's Gemfile:

    gem 'stringbutter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stringbutter

## Usage

   TODO:  Coming
   
   Creates formatted ASCII output.
   Telescoping indentation
   
   
   e.g.
   
   sb = StringButter.new
   sb.p "1. This is the first line"
   sb.p.bold "2. This is a bold second line "
   sb.append "and this is on the same level as the previous line"
   sb.p "3. Indentations"
   sb.ind "a. This is indented"
   sb.p "b. This is the same level of indentation"
   sb.ind+ "i. This line is further indented."
   sb.p "ii. Indent level remains the same"
   sb.ind+("a) This line is even further indented"
   sb.ind-("ii. Back to the the 2nd level"
   sb.ind--("4. Back to the main level"
   
   
   Colorizing/Styles:
   
   sb = StringButter.new
   
   sb.red "this is a red string"
   sb.red.bold "This is a bold red string"
   sb.append.italic "shhhhh"
   sb.append "Don't tell anyone!"
   
   
   
   
   
   
   
   

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
