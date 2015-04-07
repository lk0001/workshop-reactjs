React = require('react')
window.$ = require('jquery')
Story = require('./story.cjsx')

module.exports = React.createClass(
  getInitialState: ->
    {stories: []}

  componentDidMount: ->
    $.get(@props.src, (result) =>
      @setState(stories: result)
    )

  render: ->
    <div>
      {@state.stories.map (story) ->
        <Story {...story} key={story.id} />
      }
    </div>
)
