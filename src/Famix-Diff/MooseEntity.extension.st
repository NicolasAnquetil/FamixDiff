Extension { #name : #MooseEntity }

{ #category : #'*Famix-Diff' }
MooseEntity >> comeBeforeEntity: aFamixEntity [
	| parents myParents |
	aFamixEntity isAssociation
		ifTrue: [ ^ self comeBeforeTheIndependentEntity: aFamixEntity ].
	parents := aFamixEntity deepCollect: [ :element | element ifNotNil: [ element parentContainer ] ].
	myParents := self deepCollect: [ :element | element ifNotNil: [ element parentContainer ] ].
	(parents includes: self)
		ifTrue: [ ^ true ].
	(myParents includes: aFamixEntity)
		ifTrue: [ ^ false ].
	^ self comeBeforeTheIndependentEntity: aFamixEntity
]

{ #category : #'*Famix-Diff' }
MooseEntity >> comeBeforeEntityOrHasSameName: aFamixEntity [
	^ (self comeBeforeEntity: aFamixEntity ) or: [ self mooseName =  aFamixEntity mooseName]
]

{ #category : #'*Famix-Diff' }
MooseEntity >> comeBeforeTheIndependentEntity: aFamixEntity [
	"self and aFamixEntity are not in the same containment tree"

	^ (self typePriorityOf: self getFamixClass) < (self typePriorityOf: aFamixEntity getFamixClass)
		or: [ (self eq: aFamixEntity) and: [ self mooseName < aFamixEntity mooseName ] ]
]

{ #category : #'*Famix-Diff' }
MooseEntity >> eq: aFamixEntity [
	^ self getFamixClass = aFamixEntity getFamixClass
		
]

{ #category : #'*Famix-Diff' }
MooseEntity >> getFamixClass [
	^ self class isOrionClass
		ifTrue: [ self class superclass ]
		ifFalse: [ self class ]
]

{ #category : #'*Famix-Diff' }
MooseEntity >> isGlobalVariable [
	^ false 
]

{ #category : #'*Famix-Diff' }
MooseEntity >> isLocalVariable [
	^ false 
]

{ #category : #'*Famix-Diff' }
MooseEntity class >> isOrionClass [ 
	^false
]

{ #category : #'*Famix-Diff' }
MooseEntity >> isOrionClass [
	^ false
]

{ #category : #'*Famix-Diff' }
MooseEntity >> isParameterizableClass [
	^ false
]

{ #category : #'*Famix-Diff' }
MooseEntity >> isScopingEntity [
	^ false
]

{ #category : #'*Famix-Diff' }
MooseEntity >> isStructuralEntity [
	^ false
]

{ #category : #'*Famix-Diff' }
MooseEntity >> parentContainer [
	^ self belongsTo
]

{ #category : #'*Famix-Diff' }
MooseEntity >> parentItems [
	^ self parentContainer ifNil: [ {} ] ifNotNil: [ :parentContainer | {parentContainer} ]
]

{ #category : #'*Famix-Diff' }
MooseEntity >> shouldBeConsideredForDiff [
	^ false
]

{ #category : #'*Famix-Diff' }
MooseEntity >> typeOrderPriority [
	^ { FAMIXNamespace . FAMIXPackage . FAMIXClass . FAMIXParameterizableClass . FAMIXPrimitiveType . FAMIXParameterType . FAMIXAnnotationType . FAMIXEnum . FAMIXType . FAMIXParameterizedType . FAMIXMethod . #FAMIXInnerClass .#FAMIXTypeInnerMethod. #FAMIXAnonymousClass . #FAMIXMethodInAnonymousClass . FAMIXAttribute . FAMIXEnumValue . FAMIXAnnotationTypeAttribute . FAMIXParameter. FAMIXLocalVariable . FAMIXImplicitVariable .  FAMIXAccess . FAMIXInvocation . FAMIXReference . FAMIXInheritance  }
]

{ #category : #'*Famix-Diff' }
MooseEntity >> typePriorityOf: aFamixClass [
	^ self typeOrderPriority indexOf: aFamixClass 
]
