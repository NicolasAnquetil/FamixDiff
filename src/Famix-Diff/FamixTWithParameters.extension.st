Extension { #name : #FamixTWithParameters }

{ #category : #'*Famix-Diff' }
FamixTWithParameters >> containedEntities [
	^ super containedEntities union: self parameters
]
