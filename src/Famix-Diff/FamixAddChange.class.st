"
I am a change that represents the addition of an entity.

I answer true to #isAddition.
"
Class {
	#name : #FamixAddChange,
	#superclass : #FamixChange,
	#category : #'Famix-Diff-Changes'
}

{ #category : #accessing }
FamixAddChange class >> ppname [
	^ 'add'
]

{ #category : #visiting }
FamixAddChange >> accept: aVisitor [
	aVisitor visitAddChange: self
]

{ #category : #testing }
FamixAddChange >> isAddition [

	^true
]

{ #category : #'as yet unclassified' }
FamixAddChange >> updateDiffForAssociations: aFamixDiff [
	aFamixDiff addAssociations: self entity queryAllLocalOutgoing
]