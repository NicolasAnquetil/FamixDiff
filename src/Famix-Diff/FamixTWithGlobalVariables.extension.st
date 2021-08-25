Extension { #name : #FamixTWithGlobalVariables }

{ #category : #'*Famix-Diff' }
FamixTWithGlobalVariables >> containedEntities [
	^ super containedEntities union: self globalVariables
]
