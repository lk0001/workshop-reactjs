React = require('react')
require('bootstrap')
ListGroupItem = require('react-bootstrap').ListGroupItem

module.exports = React.createClass(
  render: ->
    <ListGroupItem>
      <a href={@props.url}>
        {@props.title}
      </a>
    </ListGroupItem>
)
