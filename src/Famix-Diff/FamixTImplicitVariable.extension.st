Extension { #name : #FamixTImplicitVariable }

{ #category : #'*Famix-Diff' }
FamixTImplicitVariable >> moveMatch: otherEntity givenChanges: changes tolerance: percentage [
	"no move possible for 'self' or 'super' "
	^ false
]

{ #category : #'*Famix-Diff' }
FamixTImplicitVariable >> renameMatch: otherEntity givenChanges: changes tolerance: percentage [
	"no rename possible for 'self' or 'super' "
	^ false
]
