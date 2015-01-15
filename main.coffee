@Foo = new Mongo.Collection 'foo'

if Meteor.isServer
 
  Meteor.startup ->
    # Do things on server startup
    return
    
  Meteor.methods
    # Create methods in this fashion
    'foo':->
      return 'foo'

if Meteor.isClient
  
  Meteor.startup ->
    # Do things on client startup
    Meteor.call 'foo', (error,result)->
      console.log result unless error
        
    Session.setDefault 'foo_count', 0

  Template.foo.events
    'click .button': (e) ->
      e.stopPropagation()
      
      # This is how you can manipulate event target ...
      $(e.currentTarget).transition 'pulse'
      
      # ... in this kind of fashion
      $('.star').transition 'tada'
      
      Session.set 'foo_count', (Session.get('foo_count') + 1)

  Template.foo.helpers
    foo_count: ->
      # Use session to create reative content
      Session.get 'foo_count'