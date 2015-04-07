React = require('react')
require('bootstrap')
ListGroup = require('react-bootstrap').ListGroup
Story = require('./story.cjsx')

module.exports = React.createClass(
  apiUrl: 'https://fierce-gorge-1132.herokuapp.com'

  getInitialState: ->
    {stories: []}

  componentDidMount: ->
    $.get(@path(), (result) =>
      @setState(stories: result)
    )

  render: ->
    <ListGroup>
      {@state.stories.map (story) ->
        <Story {...story} key={story.id} />
      }
    </ListGroup>

  path: ->
    "#{@apiUrl}#{@props.path}"
)
