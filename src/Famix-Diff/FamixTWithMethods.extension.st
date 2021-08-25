Extension { #name : #FamixTWithMethods }

{ #category : #'*Famix-Diff' }
FamixTWithMethods >> containedEntities [
	^ super containedEntities union: self methods
]
