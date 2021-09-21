"
Unit tests for `MLShelf`
"
Class {
	#name : #MLShelfTest,
	#superclass : #TestCase,
	#instVars : [
		'shelf'
	],
	#category : #'MauLoad-Core-Tests-Model'
}

{ #category : #running }
MLShelfTest >> setUp [

	super setUp.
	shelf := MLShelf new
]

{ #category : #tests }
MLShelfTest >> testCurrentShelf [

	self 
		assert: MLShelf current notNil;
		assert: MLShelf current books isCollection 	
	
]

{ #category : #tests }
MLShelfTest >> testEmptyBookCollection [

	self 
		assert: shelf notNil;
		assert: shelf books isCollection;	
		assert: shelf books isEmpty		
	
]
