"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMauLoaWeb,
	#superclass : #PackageManifest,
	#category : #'MauLoa-Web-Manifest'
}

{ #category : #'code-critics' }
ManifestMauLoaWeb class >> ruleUncommonMessageSendRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#MLWebRequestHandler)) #'2021-09-21T22:03:00.888026+02:00') )
]
