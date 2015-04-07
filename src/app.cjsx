React = require('react')

App = React.createClass(
  render: ->
    <div>
      Hello world
    </div>
)

React.render(
  <App />,
  document.getElementById('main')
);
