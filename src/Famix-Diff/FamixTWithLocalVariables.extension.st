Extension { #name : #FamixTWithLocalVariables }

{ #category : #'*Famix-Diff' }
FamixTWithLocalVariables >> containedEntities [
	^ super containedEntities union: self localVariables
]
