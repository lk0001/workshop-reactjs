React = require('react')
window.$ = require('jquery')
Story = require('./story.cjsx')

module.exports = React.createClass(
  getInitialState: ->
    {stories: []}

  componentDidMount: ->
    $.get('/stories', (result) =>
      @setState(stories: result)
    )

  render: ->
    <div>
      {@state.stories.map (story) ->
        <Story title={story.title} body={story.body} key={story.id} />
      }
    </div>
)
