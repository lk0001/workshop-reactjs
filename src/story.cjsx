React = require('react')
require('bootstrap')
ListGroupItem = require('react-bootstrap').ListGroupItem
Badge = require('react-bootstrap').Badge

module.exports = React.createClass(
  render: ->
    <ListGroupItem>
      <a href={@props.url}>
        {@props.title}
      </a>
      <Badge>{@props.score}</Badge>
    </ListGroupItem>
)
