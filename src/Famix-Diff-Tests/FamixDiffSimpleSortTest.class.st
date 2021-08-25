Class {
	#name : #FamixDiffSimpleSortTest,
	#superclass : #FamixDiffSortTest,
	#category : #'Famix-Diff-Tests-Core'
}

{ #category : #running }
FamixDiffSimpleSortTest >> setUp [
	snapshot := FXDiff new
		diffTransformers: {FamixDiffSimpleChangesSorter};
		yourself
]
