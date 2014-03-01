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

      
   Creates formatted ASCII output with telescoping indentation!
   
   
`   
`   e.g.
   
   sb = StringButter.new
   
   sb.p "1. This is the first line"
   
   sb.p( "2. This is a bold second line " ).bold
   
   sb.append "and this is on the same level as the previous line"
   
   sb.p "3. Indentations"
   
   sb.ind "a. This is indented"
   
   sb.p "b. This is the same level of indentation"`

`   

   Colorizing/Styles:
   ….
   `
   
   
   `
   
   
   
   
   
   

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
