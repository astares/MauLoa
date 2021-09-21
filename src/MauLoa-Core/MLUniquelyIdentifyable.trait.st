"
Trait for uniquely identified objects
"
Trait {
	#name : #MLUniquelyIdentifyable,
	#instVars : [
		'id'
	],
	#category : #'MauLoa-Core-Traits'
}

{ #category : #accessing }
MLUniquelyIdentifyable >> id [

	^ id
]

{ #category : #accessing }
MLUniquelyIdentifyable >> id: anObject [

	id := anObject
]
