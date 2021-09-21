"
A shelf of books
"
Class {
	#name : #MLShelf,
	#superclass : #Object,
	#instVars : [
		'books'
	],
	#classVars : [
		'Current'
	],
	#category : #'MauLoa-Core-Model'
}

{ #category : #current }
MLShelf class >> current [

	^ Current ifNil: [ Current := self new ]
]

{ #category : #accessing }
MLShelf >> books [

	^ books ifNil:[ books := OrderedCollection new ]
]
