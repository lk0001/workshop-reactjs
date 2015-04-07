window.jQuery = require('jquery')
window.$ = window.jQuery
React = require('react')
Router = require('react-router')
DefaultRoute = Router.DefaultRoute
Route = Router.Route
Redirect = Router.Redirect
RouteHandler = Router.RouteHandler
Header = require('./header.cjsx')
PopularStories = require('./popular_stories.cjsx')
RecentStories = require('./recent_stories.cjsx')

App = React.createClass(
  render: ->
    <div>
      <Header />
      <RouteHandler />
    </div>
)

routes =
  <Route handler={App} path='/'>
    <Redirect from='/' to='popular' />
    <Route name='popular' handler={PopularStories} path='popular' />
    <Route name='recent' handler={RecentStories} path='recent' />
  </Route>

Router.run(routes, (Handler) ->
  React.render(<Handler />, document.getElementById('main'))
)
