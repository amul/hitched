#= require 'lib/angular'
#= require 'lib/angular-resource'

notes = angular.module('notes',['ngResource'])

angular.module('notes').controller "NotesCtrl", ($scope) ->
	console.log("controller loaded")

