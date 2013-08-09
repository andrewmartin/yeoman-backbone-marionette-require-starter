# yeoman-backbone-marionette-require-starter kit

###### This is a temporary sample project using:

- Yeoman
- Backbone
- Bootstrap (RC3), temporarily set up as submodule so we can checkout the RC3 branch
- Backbone Marionette
- RequireJS
- RequireJS Text
- A few other goodies

This is based on the nicely done [https://github.com/rtorr/coffee-backbone-require-bootstrap](coffee-backbone-require-bootstrap) setup by rtorr. (THANKS!)

### Added:

- PushState support for Yeoman, suggested from [http://ericduran.io/2013/05/31/angular-html5Mode-with-yeoman/](this post).
- Backbone Marionette Scaffolding
- A little different application structure
- Main header/footer region definitions
- A nice Bootstrap-sass manifest using RC3 of the [https://github.com/thomas-mcdonald/bootstrap-sass](bootstrap-sass) project.
- Font-awesome (currently not using Bower, but latest release is pulled in)

Follow the original discussion here: https://github.com/yeoman/yeoman/issues/956#issuecomment-22076327

This uses SCSS, so you'll need to install that before running.

### Startup:

    npm install

    bower install

    grunt server

### Build:

    grunt