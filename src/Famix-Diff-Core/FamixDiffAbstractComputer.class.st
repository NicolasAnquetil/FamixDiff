"
I compute the diff of 2 models given. Please use me through FamixDiffOrchestrator.

TODO

"
Class {
	#name : #FamixDiffAbstractComputer,
	#superclass : #FamixDiffAbstract,
	#category : #'Famix-Diff-Core'
}

{ #category : #run }
FamixDiffAbstractComputer >> diff [
	self subclassResponsibility
]
