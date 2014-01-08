#= require 'lib/angular'
#= require 'lib/angular-resource'

notes = angular.module('notes',['ngResource'])

angular.module('notes').controller "NotesCtrl", ($scope, $resource) ->
	Note = $resource('/api/notes/:id', {id: '@id'})
	console.log( Note.query() )
	$scope.hello = [1,2,3]
	console.log("controller loaded")

