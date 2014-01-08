#= require 'lib/angular'
#= require 'lib/angular-resource'

notes = angular.module('notes',['ngResource'])

notes.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

angular.module('notes').controller "NotesCtrl", ($scope, $resource) ->
	Note = $resource('/api/notes/:id', {id: '@id'})
	console.log( Note.query() )
	$scope.hello = [1,2,3]
	$scope.notes = Note.query()
	console.log("controller loaded")

