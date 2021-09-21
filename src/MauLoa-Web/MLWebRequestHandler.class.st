"
A handler for web requests
"
Class {
	#name : #MLWebRequestHandler,
	#superclass : #Object,
	#instVars : [
		'teapot'
	],
	#category : #'MauLoa-Web-Handling'
}

{ #category : #'class initialization' }
MLWebRequestHandler class >> initialize [ 

	self install
]

{ #category : #registration }
MLWebRequestHandler class >> install [
	<script>
	
	self installOn: MLWebserver teapot
]

{ #category : #registration }
MLWebRequestHandler class >> installOn: aTeapot [

	^ (self new)
			installOn: aTeapot;
			yourself
]

{ #category : #registration }
MLWebRequestHandler >> installOn: aTeapot [
	<script: 'self install'>
	
	teapot := aTeapot.	
	teapot 
		removeAllDynamicRoutes;
		GET: '/' -> [ :req | ZnResponse ok: (ZnStringEntity text: 'Welcome to MauLoa') ];
		GET: '/<book>' -> [ :req | self responseForBook: (req at: #book) ]; 
		GET: '/<book>/<id>' -> [ :req | self responseForBook: (req at: #book) page: (req at: #id) ] 
]

{ #category : #registration }
MLWebRequestHandler >> responseForBook: book [  

	book inspect
]

{ #category : #registration }
MLWebRequestHandler >> responseForBook: book page: page [

	(book -> page) inspect
]
