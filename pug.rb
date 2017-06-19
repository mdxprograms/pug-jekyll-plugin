##
## This Plugin enables Pug support to pages and posts.
##

require 'open3'

module Jekyll

  class PugConverter < Converter

    def matches(ext)
      ext =~ /^\.pug$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      begin
        o, e, s = Open3.capture3('pug -p .', :stdin_data => content)
        puts(<<-eos
Pug Error >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#{e}
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Pug Error
        eos
        ) if e.length > 0
      rescue Errno::ENOENT => e
        puts "** ERROR: Pug isn't installed or could not be found."
        puts "** ERROR: To install with NPM run: npm install pug -g"
        return nil
      end
      return o
    end

  end

end
