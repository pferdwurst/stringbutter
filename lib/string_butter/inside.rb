require 'pp'

module StringButter
  class Inside < ::String


    STYLES = {
      :bold => "1",
      :underline => "4",
      :red => "31"
    }

    OPTIONS = {
      :width => 120,
      :bgcolor => "black",
      :color => "white"
    }

    STYLE_REGEX = /^\e\[(.*?)m/
    END_STYLE_REGEX = /\e\[0m$/
    INDENT_REGEX = /\[indent\]/ix

    def initialize(str, options = OPTIONS)
      super(str)
      @opts = options
      @indent = 0
    end

    # Same-line line append
    def add(string)
      self << string
    end

    # Next line append
    def p(string)
      self << ("\n" + indentation + string)
    end

    # Indent a block
    def ind(string)
      @indent += 1
      p(string)
    end

    # Indent a block
    def indminus(string)
      @indent -= 1
      p(string)
    end

    def indminusminus(string)
      @indent = 0
      self << ("\n" + string)
    end

    def indentation
      '   ' * @indent
    end

    def flush
      print parse
      STDOUT.flush
      # HOW DO YOU CLEAR THE STRING ?
      self.clear
    end

    def parse
      # Do all the color interpretation?
      #if STDOUT.tty?
      self.gsub(INDENT_REGEX) {
        indentation
      }
    end

    def red
      wrap( STYLES[:red])
      return self
    end

    def bold
      wrap( STYLES[:bold])
      return self
    end

    def underline
      wrap( STYLES[:underline])
      return self
    end

    def wrap ( newcode = "00")
      codes = self.scan(STYLE_REGEX)

      if codes.size == 0
        formatting = "\e[" + newcode  + "m"
        self.insert(0, formatting)
      else
        formatting =  codes[0][0] + ";" + newcode
        self.gsub(STYLE_REGEX,  "\e[" + formatting  + "m" )
      end

     
      # finishing touches
      self << "\e[0m" unless self =~ /\e\[0m$/
    end

  end
end