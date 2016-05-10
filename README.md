pug-jekyll-plugin (previously jade-jekyll-plugin)
=================================================

Converter Plugin that brings Pug support to the [Jekyll blog-aware, static site generator](http://jekyllrb.com/).

## HOWTO

 1. Install Pug with NPM. e.g. `$ npm install pug -g`
 1. Place the `pug.rb` file into your Jekyll installation under `_plugins/` 
 1. All static pages and posts ending in the extension `.pug` are now processed through Pug automatically.
 1. Layouts need special treatment, see below.

## Applying Pug to Layouts

Unfortunately Jekyll doesn't yet allow plugins to pre-process layout files before further processing.  To write your layouts in Pug, you therefore have to render them externally.  Fortunately this only needs to be done frequently for a small period of time, during layout development.

During layout development, we recommend:

 1. Create a `_layouts/pug/` folder where you will place your "pre-rendered" Pug source.
 2. Create a `Makefile` or shell script to execute the Pug compile-and-watch command: `pug -w -o ../ *.pug`
 3. In another terminal, simultaneously run your Jekyll builds: e.g. `jekyll serve -w`

## License

See [LICENSE](https://github.com/snappylabs/pug-jekyll-plugin/blob/master/LICENSE).

