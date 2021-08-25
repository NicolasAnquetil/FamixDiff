Extension { #name : #FamixTParameterizedType }

{ #category : #'*Famix-Diff' }
FamixTParameterizedType >> containedEntities [
	^ super containedEntities union: self arguments
]

{ #category : #'*Famix-Diff' }
FamixTParameterizedType >> equalArguments: otherEntity tolerance: percentage [
	^ self arguments equalNameOwner: otherEntity arguments
]

{ #category : #'*Famix-Diff' }
FamixTParameterizedType >> moveMatch: otherEntity givenChanges: changes tolerance: percentage [
	(super moveMatch: otherEntity givenChanges: changes tolerance: percentage)
		ifFalse: [ ^ false ].
	^ self equalArguments: otherEntity tolerance: percentage
]

{ #category : #'*Famix-Diff' }
FamixTParameterizedType >> renameMatch: otherEntity givenChanges: changes tolerance: percentage [
	(super renameMatch: otherEntity givenChanges: changes tolerance: percentage)
		ifFalse: [ ^ false ].
	^ self equalArguments: otherEntity tolerance: percentage
]
