React = require('react')
Stories = require('./stories.cjsx')

App = React.createClass(
  render: ->
    <div>
      Hello world!

      Stories:
      <Stories src="#{@props.apiPath}/stories" />
    </div>
)

React.render(
  <App apiPath='https://fierce-gorge-1132.herokuapp.com' />,
  document.getElementById('main')
)
