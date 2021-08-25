Extension { #name : #FamixTWithTypes }

{ #category : #'*Famix-Diff' }
FamixTWithTypes >> containedEntities [
	^ super containedEntities union: self types
]
