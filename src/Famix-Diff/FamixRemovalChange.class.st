"
I am a change that represents the removal of an entity.

I answer true to #isRemoval.
"
Class {
	#name : #FamixRemovalChange,
	#superclass : #FamixChange,
	#category : #'Famix-Diff-Changes'
}

{ #category : #accessing }
FamixRemovalChange class >> ppname [
	^ 'del'
]

{ #category : #visiting }
FamixRemovalChange >> accept: aVisitor [
	aVisitor visitRemovalChange: self
]

{ #category : #testing }
FamixRemovalChange >> isRemoval [

	^true
]

{ #category : #'as yet unclassified' }
FamixRemovalChange >> updateDiffForAssociations: aFamixDiff [
	aFamixDiff delAssociations: self entity queryAllLocalOutgoing
]
