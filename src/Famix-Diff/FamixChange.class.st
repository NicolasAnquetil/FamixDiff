"
Abstract class for possible changes.
Basically introduces the testing methods: isRemoval, isModification, isChange, isAddition
"
Class {
	#name : #FamixChange,
	#superclass : #Object,
	#instVars : [
		'entity'
	],
	#category : #'Famix-Diff-Changes'
}

{ #category : #accessing }
FamixChange class >> ppname [
	^ self subclassResponsibility
]

{ #category : #comparing }
FamixChange >> = anObject [
	^ (anObject class = self class) and: [ 
			anObject entity = self entity ]
]

{ #category : #visiting }
FamixChange >> accept: aVisitor [
	aVisitor visitChange: self
]

{ #category : #accessing }
FamixChange >> baseEntity [
	^ self entity
]

{ #category : #accessing }
FamixChange >> baseEntity: anObject [
	self entity: anObject
]

{ #category : #'as yet unclassified' }
FamixChange >> comeBefore: aFamixChange [
	^ (self entity eq: aFamixChange entity)
		ifTrue:
			[ (self typeOrderPriority indexOf: self class)
				< (self typeOrderPriority indexOf: aFamixChange class) ]
		ifFalse: [ self entity comeBeforeEntity: aFamixChange entity ]
]

{ #category : #'as yet unclassified' }
FamixChange >> comeBeforeOrIsEquivalent: aFamixChange [
	^ (self comeBefore: aFamixChange)
		or: [ self class = aFamixChange class and: [ self entity comeBeforeEntityOrHasSameName: aFamixChange entity ] ]
]

{ #category : #'as yet unclassified' }
FamixChange >> edgesToRelatedItems [
	"
	Orion Note from Vincent Blondeau
	This method can't be distributed on the entities to use the object programming standards. Because if it the case, you have to use a FMMultivalue link to go from the entity to the change and as the entity is changing of state (Moose -> Orion). It is not possible to persist the link in the new version.
	"

	| parents |
	parents := self entityToGetParent parents reject: #isNil.
	self entityToGetParent isType
		ifTrue:
			[ parents := parents union: self entityToGetParent directSuperclasses ].
	(self entityToGetParent isKindOf: FAMIXParameterizedType)
		ifTrue: [ self entityToGetParent parameterizableClass
				ifNotNil: [ :paramClass | 
					parents := parents asOrderedCollection
						add: paramClass;
						yourself ] ].
	^ parents
		collect:
			[ :parentItem | "The version after is more accurate but take more time and create cycles... We try to make the diff sort without..." "parents := self entityToGetParent parentEntities reject: #isNil.
	self entityToGetParent isType
		ifTrue: [ parents := parents union: self entityToGetParent directSuperclasses ].
	(self entityToGetParent isKindOf: FAMIXParameterizedType)
		ifTrue: [ self entityToGetParent parameterizableClass
				ifNotNil: [ :paramClass | 
					parents := parents asOrderedCollection
						add: paramClass;
						yourself ].
			parents := parents asOrderedCollection
				addAll: self entityToGetParent arguments;
				yourself ].
	^ parents collect: [ :parentItem | parentItem -> self entityToGetParent ]" parentItem -> self entityToGetParent ]
]

{ #category : #accessing }
FamixChange >> entity [
	
	^ entity
]

{ #category : #accessing }
FamixChange >> entity: anEntity [
	entity := anEntity
]

{ #category : #'as yet unclassified' }
FamixChange >> entityMooseName [
	^ entity mooseName
]

{ #category : #accessing }
FamixChange >> entityName [
	
	^ entity name
]

{ #category : #'as yet unclassified' }
FamixChange >> entityToGetParent [
	^ self entity
]

{ #category : #comparing }
FamixChange >> hash [
	^ self entity hash bitXor: self entityName hash
]

{ #category : #testing }
FamixChange >> isAddition [

	^false
]

{ #category : #testing }
FamixChange >> isBody [
	^ false
]

{ #category : #testing }
FamixChange >> isForAssociation [
	^ entity isAssociation
]

{ #category : #testing }
FamixChange >> isForBehaviouralEntity [
	^ entity isKindOf: FAMIXBehaviouralEntity 
]

{ #category : #testing }
FamixChange >> isForScopingEntity [
	^ entity isKindOf: FAMIXScopingEntity.
]

{ #category : #testing }
FamixChange >> isForType [
	^ entity isKindOf: FAMIXType.
]

{ #category : #testing }
FamixChange >> isKindOfAddition [
	^ self isAddition
		or: [ self isMove or: [ self isRename or: [ self isBody ] ] ]
]

{ #category : #testing }
FamixChange >> isMatch [
	^ false
]

{ #category : #testing }
FamixChange >> isMove [
	^ false
]

{ #category : #testing }
FamixChange >> isRemoval [

	^false
]

{ #category : #testing }
FamixChange >> isRename [
	^ false
]

{ #category : #testing }
FamixChange >> isVersion [

	^false
]

{ #category : #accessing }
FamixChange >> ppname [
	^ self class ppname
]

{ #category : #printing }
FamixChange >> printOn: stream [
	stream
		<< self ppname;
		<< '(';
		<< entity class name;
		<< ') ';
		<< entity mooseName
]

{ #category : #accessing }
FamixChange >> targetEntity [
	^ self entity
]

{ #category : #'as yet unclassified' }
FamixChange >> typeOrderPriority [ 
	 ^{ FamixVersionChange . FamixRenameChange . FamixAddChange . FamixMoveChange ". FamixRemovalChange" }
]

{ #category : #'as yet unclassified' }
FamixChange >> updateDiffForAssociations: aFamixDiff [
	^ self subclassResponsibility
]
