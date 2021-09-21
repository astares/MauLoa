"
A book in a shelf
"
Class {
	#name : #MLBook,
	#superclass : #MLItem,
	#traits : 'MLNamed',
	#classTraits : 'MLNamed classTrait',
	#instVars : [
		'pages'
	],
	#category : #'MauLoa-Core-Model'
}

{ #category : #accessing }
MLBook >> pages [ 

	^ pages ifNil: [ pages := OrderedCollection new ] 
]
