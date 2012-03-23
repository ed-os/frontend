# Placeholder Polyfill
# https://github.com/mathiasbynens/jquery-placeholder
$(window).load ->
  $("input, textarea").placeholder()

# Sammy
(($) ->
  circle = $.sammy("body", ->

    # Page
    class Page
      constructor: (@name, @title) ->

      render: ->
        document.title = "Circle - " + @title
        $("body").attr("id",@name).html HAML['header'](renderContext)
        $("body").append HAML[@name](renderContext)
        $("body").append HAML['footer'](renderContext)

      load: (show) ->
        self = this
        if show?
          $.getScript "assets/views/outer/#{@name}/#{@name}.hamlc", ->
            self.render()
        else
          $.getScript "assets/views/outer/#{@name}/#{@name}.hamlc"

      display: ->
        if HAML? and HAML[@name]?
          @render()
        else
          @load(true)


    # Pages
    home = new Page("home", "Continuous Integration made easy")
    about = new Page("about", "About Us")

    # Navigation
    @get "/", (context) -> home.display()
    @get "#/about", (context) -> about.display()

  )

  # Run the application
  $ -> circle.run "#/"

) jQuery
