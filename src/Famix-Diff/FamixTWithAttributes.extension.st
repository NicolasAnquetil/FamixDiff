Extension { #name : #FamixTWithAttributes }

{ #category : #'*Famix-Diff' }
FamixTWithAttributes >> containedEntities [
	^ super containedEntities union: self attributes
]
