jade-jekyll-plugin
==================

Converter Plugin that brings Jade support to the [Jekyll blog-aware, static site generator](http://jekyllrb.com/).

# HOWTO

 * Install Jade with NPM. e.g. `$ npm install jade -g`
 * Place the `jade.rb` file into your Jekyll installation under `_plugins/` 
 * All static pages and posts ending in the extension `.jade` are now processed through Jade automatically.
 * Layouts need special treatment, see below.

# Applying Jade to Layouts

Unfortunately Jekyll doesn't yet allow plugins to pre-process layout files before further processing.  To write your layouts in Jade, you therefore have to render them externally.  Fortunately this only needs to be done frequently for a small period of time, during layout development.

It is then recommended:

 1. Create a `_layouts/jade/` folder where you will place your "pre-rendered" Jade source.
 2. Create a `Makefile` or shell script to execute the Jade compile-and-watch command: `jade -w -o ../ *.jade`
 3. In another terminal, simultaneously run your Jekyll builds: e.g. `jekyll serve -w`

# License

See [LICENSE](https://github.com/snappylabs/jade-jekyll-plugin/blob/master/LICENSE).

