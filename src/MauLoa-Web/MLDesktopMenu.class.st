"
Desktop menu
"
Class {
	#name : #MLDesktopMenu,
	#superclass : #Object,
	#category : #'MauLoa-Web-Utilities'
}

{ #category : #'private - accessing' }
MLDesktopMenu class >> mainMenuSymbol [

	^#'MauLoa'
]

{ #category : #'world menu' }
MLDesktopMenu class >> menuCommandOn: aBuilder [ 
	<worldMenu>
	
	| parent |
	parent := self mainMenuSymbol.
	(aBuilder item: parent)
		order: 3.0; 	 
		icon: (MLIconCache appIcon).
	aBuilder withSeparatorAfter .	
		
	 
]

{ #category : #'world menu' }
MLDesktopMenu class >> serverMenuCommandOn: aBuilder [ 
	<worldMenu>
	
	|parent|
	parent := self mainMenuSymbol.
	(aBuilder item: #'Webserver')
		parent: parent;
		order: 2;	
		icon: MLIconCache serverIcon.
	
	(aBuilder item: #'Start webserver')
		parent: #'Webserver';
		icon: MLIconCache serverStartIcon;
		action: [ MLWebserver start ].
	
	(aBuilder item: #'Stop webserver')
		parent: #'Webserver';
		icon: MLIconCache serverStopIcon;
		action: [ MLWebserver stop ].
				
	aBuilder withSeparatorAfter.

	(aBuilder item: #'Browse webserver')
		parent: #'Webserver';
		icon: MLIconCache serverIcon;
		action: [ MLWebserver browse ]			
]
