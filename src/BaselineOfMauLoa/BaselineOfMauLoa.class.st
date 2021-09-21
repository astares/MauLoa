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
			teapot: spec. 
		
		spec 
			package: 'MauLoa-Core';
			package: 'MauLoa-Web' with: [ spec requires: #('MauLoa-Core' 'Teapot') ];
			package: 'MauLoa-Core-Tests' with: [ spec requires: #('MauLoa-Core') ].
		
		spec 
			group: 'Core' with: #('MauLoa-Core');
			group: 'Web' with: #('MauLoa-Web');
			group: 'Tests' with: #('MauLoa-Core-Tests');
			group: 'all' with: #('Core' 'Web' 'Tests');
			group: 'default' with: #('all').
 
	]	
]

{ #category : #utilities }
BaselineOfMauLoa >> microdown: spec [

	spec
		baseline: 'Microdown'
      with: [ 
				spec
					loads: #('default');
					repository: 'github://pillar-markup/Microdown:dev/src' ]
]

{ #category : #utilities }
BaselineOfMauLoa >> tealight: spec [

	spec
		baseline: 'Tealight'
      with: [ 
				spec					
					repository: 'github://astares/Tealight:master/src';
					loads: #('default') ]
]

{ #category : #utilities }
BaselineOfMauLoa >> teapot: spec [

	spec
		baseline: 'Teapot'
      with: [ 
				spec
					repository: 'github://zeroflag/Teapot:master/source';
					loads: #( 'Deployment' ) ]
]
