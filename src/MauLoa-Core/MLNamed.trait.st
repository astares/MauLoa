"
Trait for named objects
"
Trait {
	#name : #MLNamed,
	#instVars : [
		'name'
	],
	#category : #'MauLoa-Core-Traits'
}

{ #category : #accessing }
MLNamed >> name [

	^ name
]

{ #category : #accessing }
MLNamed >> name: anObject [

	name := anObject
]
