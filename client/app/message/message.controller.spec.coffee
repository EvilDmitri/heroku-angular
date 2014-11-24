'use strict'

describe 'Controller: MessageCtrl', ->

  # load the controller's module
  beforeEach module 'angTestFullstackApp'
  MessageCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MessageCtrl = $controller 'MessageCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
