React = require('react')
Link = require('react-router').Link
Nav = require('react-bootstrap').Nav
NavItem = require('react-bootstrap').NavItem

module.exports = React.createClass(
  contextTypes:
    router: React.PropTypes.func

  render: ->
    routes = @context.router.getCurrentRoutes()
    routeName = routes[routes.length - 1].name
    <Nav bsStyle='pills' activeKey={routeName}>
      <NavItem eventKey={'popular'}>
        <Link to='popular'>Popular</Link>
      </NavItem>
      <NavItem eventKey={'recent'}>
        <Link to='recent'>Recent</Link>
      </NavItem>
    </Nav>
)
