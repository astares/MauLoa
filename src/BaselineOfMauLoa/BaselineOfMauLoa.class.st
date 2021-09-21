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
		self 
			microdown: spec;
			tealight: spec. 
		
		spec 
			package: 'MauLoa-Core';
			package: 'MauLoa-Web' with: [ spec requires: #('MauLoa-Core') ]
		
	]	
]

{ #category : #baselines }
BaselineOfMauLoa >> microdown: spec [

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
