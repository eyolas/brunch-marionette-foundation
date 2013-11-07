application = require 'application'
FooterView = require 'views/footer-view'
HomeView = require 'views/home-view'
AboutView = require 'views/about-view'
ContactView = require 'views/contact-view'
SigninView = require 'views/signin-view'

module.exports = class Router extends Backbone.Router

	routes:
    '': 'home'
    'about': 'about'
    'contact': 'contact'
    'signin': 'signin'

  home: =>
    view = new HomeView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'home'
      )

  about: =>
    view = new AboutView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'about'
    )

  contact: =>
    view = new ContactView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'contact'
      )

  signin: =>
    view = new SigninView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'signin'
      )