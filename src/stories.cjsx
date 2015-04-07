React = require('react')
require('bootstrap')
ListGroup = require('react-bootstrap').ListGroup
Story = require('./story.cjsx')

module.exports = React.createClass(
  getInitialState: ->
    {stories: []}

  componentDidMount: ->
    $.get(@props.src, (result) =>
      @setState(stories: result)
    )

  render: ->
    <ListGroup>
      {@state.stories.map (story) ->
        <Story {...story} key={story.id} />
      }
    </ListGroup>
)
