Class {
	#name : #MLWebHandler,
	#superclass : #Object,
	#instVars : [
		'teapot'
	],
	#category : #'MauLoa-Web-Handling'
}

{ #category : #'class initialization' }
MLWebHandler class >> initialize [ 

	self install
]

{ #category : #registration }
MLWebHandler class >> install [
	<script>
	
	self installOn: MLWebserver teapot
]

{ #category : #registration }
MLWebHandler class >> installOn: aTeapot [

	^ self new
			installOn: aTeapot;
			yourself
]

{ #category : #registration }
MLWebHandler >> installOn: aTeapot [
	<script: 'self install'>
	
	teapot := aTeapot.	
	teapot 
		removeAllDynamicRoutes;
		GET: '/' -> [ :req | ZnResponse ok: (ZnStringEntity text: 'Welcome to MauLoa') ];
		GET: '/<book>/<id>' -> [ :req | self responseForBook: (req at: #book) page: (req at: #id) ] 
]

{ #category : #registration }
MLWebHandler >> responseForBook: book page: page [

	(book -> page) inspect
]
