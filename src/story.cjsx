React = require('react')

module.exports = React.createClass(
  render: ->
    <div>
      <h3>
        <a href={@props.url}>
          {@props.title}
        </a>
      </h3>
    </div>
)
