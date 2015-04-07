window.jQuery = require('jquery')
window.$ = window.jQuery
React = require('react')
Header = require('./header.cjsx')
Stories = require('./stories.cjsx')

App = React.createClass(
  render: ->
    <div>
      <Header />
      <Stories src="#{@props.apiPath}/stories" />
    </div>
)

React.render(
  <App apiPath='https://fierce-gorge-1132.herokuapp.com' />,
  document.getElementById('main')
)
