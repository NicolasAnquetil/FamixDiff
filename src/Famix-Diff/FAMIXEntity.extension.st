Extension { #name : #FAMIXEntity }

{ #category : #'*Famix-Diff' }
FAMIXEntity >> comeBeforeEntity: aFamixEntity [
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
FAMIXEntity >> comeBeforeEntityOrHasSameName: aFamixEntity [
	^ (self comeBeforeEntity: aFamixEntity ) or: [ self mooseName =  aFamixEntity mooseName]
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> comeBeforeTheIndependentEntity: aFamixEntity [
	"self and aFamixEntity are not in the same containment tree"

	^ (self typePriorityOf: self getFamixClass) < (self typePriorityOf: aFamixEntity getFamixClass)
		or: [ (self eq: aFamixEntity) and: [ self mooseName < aFamixEntity mooseName ] ]
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> eq: aFamixEntity [
	^ self getFamixClass = aFamixEntity getFamixClass
		
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> getFamixClass [
	^ self class isOrionClass
		ifTrue: [ self class superclass ]
		ifFalse: [ self class ]
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> isGlobalVariable [
	^ false 
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> isLocalVariable [
	^ false 
]

{ #category : #'*Famix-Diff' }
FAMIXEntity class >> isOrionClass [
	^false
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> isOrionClass [
	^ false
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> isParameterizableClass [
	^ false
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> isScopingEntity [
	^ false
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> isStructuralEntity [
	^ false
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> parentContainer [
	^ self belongsTo
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> parentItems [
	^ self parentContainer ifNil: [ {} ] ifNotNil: [ :parentContainer | {parentContainer} ]
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> shouldBeConsideredForDiff [
	^ false
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> typeOrderPriority [
	^ { FAMIXNamespace . FAMIXPackage . FAMIXClass . FAMIXParameterizableClass . FAMIXPrimitiveType . FAMIXParameterType . FAMIXAnnotationType . FAMIXEnum . FAMIXType . FAMIXParameterizedType . FAMIXMethod . #FAMIXInnerClass .#FAMIXTypeInnerMethod. #FAMIXAnonymousClass . #FAMIXMethodInAnonymousClass . FAMIXAttribute . FAMIXEnumValue . FAMIXAnnotationTypeAttribute . FAMIXParameter. FAMIXLocalVariable . FAMIXImplicitVariable .  FAMIXAccess . FAMIXInvocation . FAMIXReference . FAMIXInheritance  }
]

{ #category : #'*Famix-Diff' }
FAMIXEntity >> typePriorityOf: aFamixClass [
	^ self typeOrderPriority indexOf: aFamixClass 
]
