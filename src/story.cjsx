React = require('react')

module.exports = React.createClass(
  render: ->
    <div>
      <h3>{@props.title}</h3>
      <div>{@props.body}</div>
    </div>
)
