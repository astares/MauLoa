"
Abstract superclass for items
"
Class {
	#name : #MLItem,
	#superclass : #Object,
	#traits : 'MLUniquelyIdentifyable',
	#classTraits : 'MLUniquelyIdentifyable classTrait',
	#category : #'MauLoa-Core-Model'
}

{ #category : #testing }
MLItem class >> isAbstract [

	^ self == MLItem 
]
