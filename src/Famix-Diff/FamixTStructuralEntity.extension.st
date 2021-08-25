Extension { #name : #FamixTStructuralEntity }

{ #category : #'*Famix-Diff' }
FamixTStructuralEntity >> moveMatch: otherEntity givenChanges: changes tolerance: percentage [
	(super moveMatch: otherEntity givenChanges: changes tolerance: percentage)
		ifFalse: [ ^ false ].
	^ self quasiEqualAccesses: otherEntity tolerance: percentage
]

{ #category : #'*Famix-Diff' }
FamixTStructuralEntity >> renameMatch: otherEntity givenChanges: changes tolerance: percentage [
	(super renameMatch: otherEntity givenChanges: changes tolerance: percentage)
		ifFalse: [ ^ false ].
	^ self quasiEqualAccesses: otherEntity tolerance: percentage
]
