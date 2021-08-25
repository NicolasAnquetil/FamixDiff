Extension { #name : #FamixTEnum }

{ #category : #'*Famix-Diff' }
FamixTEnum >> containedEntities [
	^ super containedEntities union: self values
]
