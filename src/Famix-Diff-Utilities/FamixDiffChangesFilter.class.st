"
Filters changes according to the selected type.

"
Class {
	#name : #FamixDiffChangesFilter,
	#superclass : #FamixDiffFilter,
	#category : #'Famix-Diff-Utilities'
}

{ #category : #result }
FamixDiffChangesFilter >> computeResult [
	| selectors |
	selectors := self selection collect: #filterSelector.
	^self changes select: [ :aChange | selectors anySatisfy: [ :aSel | aChange perform: aSel ] ].
]
