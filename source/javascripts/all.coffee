#= require reveal.js/lib/js/head.min
#= require reveal.js/js/reveal
#= require moment
#= require jquery

# <!-- Sets date using Moment.js -->
today = moment().format('dddd, MMMM Do')
# document.getElementById('now').innerHTML = now;
document.getElementById('today').innerHTML = today

checkForNewBuild = ->
  $.get 'build.json', (rep) ->
    unless rep.build_id == window.kisokBuild
      if location.host != "localhost"
        location.reload()
      else
        console.log rep.build_id, window.kisokBuild, "Detecting newer content would reload in Prod"

minutesToWaitBeforeCheckingForNewBuild = 10
setInterval(checkForNewBuild, minutesToWaitBeforeCheckingForNewBuild * 60 * 1000)

Reveal.initialize
  width: "90%"
  height: "100%"
  controls: false
  progress: false
  history: true
  center: true
  autoSlide: 10000
  loop: true
  autoSlideStoppable: false
  theme: Reveal.getQueryHash().theme # available themes are in /css/theme
  transition: Reveal.getQueryHash().transition or "default" # default/cube/page/concave/zoom/linear/fade/none

  # Optional libraries used to extend on reveal.js
  dependencies: [
    {
      # src: "/javascripts/reveal.js/plugin/markdown/marked.js"
      src: "javascripts/reveal.js/plugin/markdown/marked.js"
      condition: ->
        !!document.querySelector("[data-markdown]")
    }
    {
      # src: "/javascripts/reveal.js/plugin/markdown/markdown.js"
      src: "javascripts/reveal.js/plugin/markdown/markdown.js"
      condition: ->
        !!document.querySelector("[data-markdown]")
    }
    {
      # src: '/javascripts/reveal.js/plugin/highlight/highlight.js'
      src: 'javascripts/reveal.js/plugin/highlight/highlight.js'
      async: true
      callback: ->
        hljs.initHighlightingOnLoad()
    }
  ]

# { src: 'lib/js/classList.js', condition: function() { return !document.body.classList; } },
# { src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
# { src: 'plugin/zoom-js/zoom.js', async: true, condition: function() { return !!document.body.classList; } },
# { src: 'plugin/notes/notes.js', async: true, condition: function() { return !!document.body.classList; } }
