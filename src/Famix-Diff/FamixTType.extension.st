Extension { #name : #FamixTType }

{ #category : #'*Famix-Diff' }
FamixTType >> comeAfterInInheritanceOrderThan: aFamixEntity [
	^ (self superclassHierarchy includes: aFamixEntity)
]

{ #category : #'*Famix-Diff' }
FamixTType >> comeBeforeInInheritanceOrderThan: aFamixEntity [
	^ (self subclassHierarchy includes: aFamixEntity)
]

{ #category : #'*Famix-Diff' }
FamixTType >> comeBeforeTheIndependentEntity: aFamixEntity [
	"the super call have to be done after because of the name sort"
"(self typePriorityOf: self getFamixClass) < (self typePriorityOf: aFamixEntity getFamixClass)
		or: [ (self eq: aFamixEntity) and: [ self mooseName < aFamixEntity mooseName ] ]"
		
		
	^ (self comeAfterInInheritanceOrderThan: aFamixEntity) not
		and: [ (self comeBeforeInInheritanceOrderThan: aFamixEntity) or: [ super comeBeforeTheIndependentEntity: aFamixEntity ] ]
]

{ #category : #'*Famix-Diff' }
FamixTType >> containedEntities [
	^ (super containedEntities union: self methods) union: self attributes
]

{ #category : #'*Famix-Diff' }
FamixTType >> getFamixClass [
	(self container isKindOf: FAMIXMethod)
		ifTrue: [ ^ #FAMIXTypeInnerMethod ].
	^ super getFamixClass
]

{ #category : #'*Famix-Diff' }
FamixTType >> moveMatch: otherEntity givenChanges: changes tolerance: percentage [
	(super moveMatch: otherEntity givenChanges: changes tolerance: percentage)
		ifFalse: [ ^ false ].
	^ self quasiEqualBody: otherEntity tolerance: percentage
]

{ #category : #'*Famix-Diff' }
FamixTType >> parentItems [
	^ super parentItems union: self directSuperclasses
]

{ #category : #'*Famix-Diff' }
FamixTType >> renameMatch: otherEntity givenChanges: changes tolerance: percentage [
	(super renameMatch: otherEntity givenChanges: changes tolerance: percentage)
		ifFalse: [ ^ false ].
	^ self quasiEqualBody: otherEntity tolerance: percentage
]
