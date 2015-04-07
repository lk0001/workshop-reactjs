React = require('react')
Nav = require('react-bootstrap').Nav
NavItem = require('react-bootstrap').NavItem

module.exports = React.createClass(
  render: ->
    <Nav bsStyle='pills' activeKey={'popular'}>
      <NavItem eventKey={'popular'}>Popular</NavItem>
      <NavItem eventKey={'recent'}>Recent</NavItem>
    </Nav>
)
