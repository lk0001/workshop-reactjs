React = require('react')
Stories = require('./stories.cjsx')

module.exports = React.createClass(
  render: ->
    <Stories path="/stories" />
)
