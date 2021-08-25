Extension { #name : #FamixTClass }

{ #category : #'*Famix-Diff' }
FamixTClass >> getFamixClass [
	self isAnonymousClass ifTrue: [ ^ #FAMIXAnonymousClass ].
	self isInnerClass ifTrue: [ ^ #FAMIXInnerClass ].
	 ^ super getFamixClass.
	
]

{ #category : #'*Famix-Diff' }
FamixTClass >> isRealClass [
	^ self isInnerClass not and: [ self isAnonymousClass not and: [ self isParameterizableClass not ] ]
]

{ #category : #'*Famix-Diff' }
FamixTClass >> parentContainer [ 
	^ self parentPackage ifNil: [ super parentContainer ]
]
