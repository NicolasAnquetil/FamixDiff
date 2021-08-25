Extension { #name : #FamixTHasSignature }

{ #category : #'*Famix-Diff' }
FamixTHasSignature >> identityMatch: otherEntity givenChanges: changes [
	^ (super identityMatch: otherEntity givenChanges: changes)
		and: [ self signature = otherEntity signature ]
]
