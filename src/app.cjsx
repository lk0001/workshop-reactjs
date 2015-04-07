React = require('react')
Stories = require('./stories.cjsx')

App = React.createClass(
  render: ->
    <div>
      Hello world!

      Stories:
      <Stories />
    </div>
)

React.render(
  <App />,
  document.getElementById('main')
)
