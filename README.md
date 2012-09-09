Compass Extension Template
==========================

Whenever I'm creating a [Compass extension](http://compass-style.org/help/tutorials/extensions/), I find that I always use the same basic template for creating extensions, and that the project that Compass comes with isn't quite complete enough to get me where I need to be. With that in mind, I've created this little project to get you on your way. Here's a little template that I've put together to kickstart Compass extension development. Wherever it says "Extension" in the template files/file names, replace it with *your* extension's name. All files are self documented; please read the documentation there.

## lib/extension.rb

Your `lib` directory is your Ruby directory. The main file in here is **extension.rb** which contains the information that Compass needs to make your Extension run like a champ.  It contains the Compass requires for other gems (like you would include in *config.rb* normally), the code to register your extension with Compass, the version number and date of the version, and any SassScript you may want to write.

## stylesheets/_extension.scss

Your `stylesheets` directory is where you write all of your extension's Sass! I've included **_extension.scss**, but you can include whatever you'd like. Write Sass or SCSS, do what works for you! Have sub folders, have sub partials, this is your playground. Important to note: make sure that every file in here is a Partial unless there is a file you specifically want to be output as a full file. Generally speaking, most Compass extensions *only* have partial files.

## templates/project

Your `templates` directory is where you store any project templates/patterns you'd like a user to be able to use. The Compass Extension documentation explains in full what a template/pattern can do, the one provided is a generic one including print, i.e., and screen stylesheets that will import your extension. This will provide users with the ability to create a new project using your Compass extension in the following way:

`compass create <my_project> -r extension --using extension`

## CHANGELOG.md/README.md

These files aren't required for your Compass extension, but I really like including them as they are useful for Users to understand the direction of your Compass extension. Yes! That means you get to throw this README out and write your own! Do it!

## extension.gemspec

This is the magic file that will turn your collection of files into a packaged Compass extension! It's all laid out for you, just add/change what you need! When you're all done editing what you need, in the command line, from the directory where that lives, type the following:

`gem build extension.gemspec`

This will bundle your extension up into a Ruby gem. From there, if you're just using it locally, you can install your Extension in by typing the following:

`gem install extension-VERSION.gem`

If you're looking to distribute your extension, first, make sure you've got a [Ruby Gems](http://rubygems.org/) account, and type in the following:

`gem push extension-VERSION.gem`

If you're not logged in to Ruby Gems, it will ask you to log in, then it will push your extension up to Ruby Gems! Tada! It's now distributed to the world! To install a Compass extension from Ruby Gems, it's as simple as:

`gem install extension`

<hr>

# AND YOU'RE DONE.

<hr>

## Special Thanks
Super special thanks goes out to [Nathan Weizenbaum](https://github.com/nex3/) for Sass, [Chris Eppstein](https://github.com/chriseppstein/) for Compass, and [Mason Wendell](https://github.com/canarymason/) and [Scott Kellum](https://github.com/scottkellum/), my Compass extension partners in crime. Much of what's presented here is an amalgamation of what Chris, Mason, and Scott have taught me, so double thanks to them.

## License
[Creative Commons Attribution 3.0](http://creativecommons.org/licenses/by/3.0). Go wild.

If you're able to link me to your extension so I can see what you've built, that'd be awesome!