"
Unit tests for `MLBook`
"
Class {
	#name : #MLBookTest,
	#superclass : #TestCase,
	#instVars : [
		'book'
	],
	#category : #'MauLoad-Core-Tests-Model'
}

{ #category : #running }
MLBookTest >> setUp [

	super setUp.
	book := MLBook new
]

{ #category : #tests }
MLBookTest >> testEmptyPageCollection [

	self 
		assert: book notNil;
		assert: book pages isCollection;	
		assert: book pages isEmpty		
	
]
