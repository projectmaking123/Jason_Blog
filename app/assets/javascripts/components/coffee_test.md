@Blogs = React.createClass
  getInitialState: ->
    HelloWorld: @prop.data
      getDefaultProps: ->
        HelloWorld: []
  render: ->
    React.DOM.div
      className: 'HelloWorld'
      React.DOM.h1
        className: 'title'
          'HelloWorld'
        React.DOM.table
          className: 'table-table'
            React.DOM.thead null,
              React.DOM.th null, 'Title'
        React.DOM.tbody null,
          for HelloWorld in @state.HelloWorld
            React.createElement HelloWorld, key: HelloWorld.id, HelloWorld: HelloWorld
