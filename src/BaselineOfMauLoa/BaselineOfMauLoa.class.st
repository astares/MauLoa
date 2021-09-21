"
Baseline for [https://github.com/astares/MauLoa](https://github.com/astares/MauLoa)
"
Class {
	#name : #BaselineOfMauLoa,
	#superclass : #BaselineOf,
	#category : #BaselineOfMauLoa
}

{ #category : #baselines }
BaselineOfMauLoa >> baseline: spec [
	<baseline>
	
	spec for: #'common' do: [ 
		self markdown: spec.
		self tealight: spec. 
		]	
]

{ #category : #baselines }
BaselineOfMauLoa >> markdown: spec [

	spec
		baseline: 'Microdown'
      with: [ 
				spec
					loads: #('default');
					repository: 'github://pillar-markup/Microdown:dev/src' ]
]

{ #category : #baselines }
BaselineOfMauLoa >> tealight: spec [

	spec
		baseline: 'Tealight'
      with: [ 
				spec
					loads: #('default');
					repository: 'github://astares/Tealight:master/src' ]
]
