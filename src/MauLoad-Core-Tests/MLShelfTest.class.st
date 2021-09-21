"
Unit tests for `MLShelf`
"
Class {
	#name : #MLShelfTest,
	#superclass : #TestCase,
	#category : #'MauLoad-Core-Tests-Model'
}

{ #category : #tests }
MLShelfTest >> testCurrentShelf [

	self 
		assert: MLShelf current notNil;
		assert: MLShelf current books isCollection 	
	
]
