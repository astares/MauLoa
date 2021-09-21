Class {
	#name : #MLWebserver,
	#superclass : #Object,
	#instVars : [
		'teapot'
	],
	#classVars : [
		'DefaultPort',
		'DefaultServer'
	],
	#category : #'MauLoa-Web-Runtime'
}

{ #category : #operating }
MLWebserver class >> browse [
	<script>
	|baseURL|
	baseURL := 'http://localhost'.
	self defaultPort = 80 ifFalse: [ baseURL := baseURL ,':' , self defaultPort asString].
	WebBrowser openOn: baseURL.
]

{ #category : #accessing }
MLWebserver class >> defaultPort [
	"Return the default server port"
	
	^DefaultPort ifNil: [ DefaultPort := 8080 ]
]

{ #category : #accessing }
MLWebserver class >> defaultPort: anInteger [
	"Sets the default server port"
	
	DefaultPort := anInteger 
]

{ #category : #accessing }
MLWebserver class >> defaultServer [
	"Return the default server"
	
	^ DefaultServer ifNil: [ DefaultServer := self new ]
]

{ #category : #'class initialization' }
MLWebserver class >> reset [
	<script>
	
	DefaultServer := nil
]

{ #category : #running }
MLWebserver class >> start [
	"Start the server"
	<script>
	
	^self defaultServer start
]

{ #category : #running }
MLWebserver class >> startOn: aPort [
	"start on the given port"
	
	self 
		defaultPort: aPort;
		start
]

{ #category : #running }
MLWebserver class >> stop [
	"Stop the server"
	<script>
	
	^self defaultServer stop
]

{ #category : #accessing }
MLWebserver class >> teapot [

	^self defaultServer teapot
]

{ #category : #'private - initialization' }
MLWebserver >> initTeapot [

	teapot := Teapot configure: {
		#port -> self class defaultPort
 	}
]

{ #category : #initialization }
MLWebserver >> initialize [

	super initialize.
	self initTeapot
]

{ #category : #running }
MLWebserver >> start [

	teapot start
]

{ #category : #running }
MLWebserver >> stop [

	teapot stop
]

{ #category : #accessing }
MLWebserver >> teapot [

	^teapot
]
